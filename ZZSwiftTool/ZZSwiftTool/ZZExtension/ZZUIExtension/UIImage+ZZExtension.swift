//
//  UIImage+ZZExtension.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 2017/3/10.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

// 用于缓存圆形边框
private var cacheImageBg = [String: UIImage]()

extension UIImage {
    /// 截取图片的一部分
    open func zz_crop(inRect: CGRect) -> UIImage? {
        let scale = UIScreen.zz_scale
        let dotRect = CGRect(x: inRect.zz_x * scale, y: inRect.zz_y * scale, width: inRect.width * scale, height: inRect.height * scale)
        
        guard let cgimg = cgImage?.cropping(to: dotRect) else {
            return nil
        }
        
        return UIImage(cgImage: cgimg, scale: scale, orientation: .up)
    }
    
    open class func zz_imageWithColor(color: UIColor, imageSize: CGFloat = 0.5) -> UIImage {
        
        UIGraphicsBeginImageContextWithOptions(CGSize(width: imageSize, height: imageSize), false, 0.0)
        
        color.setFill()
        UIRectFill(CGRect(x: 0, y: 0, width: imageSize, height: imageSize))
        
        let result = UIGraphicsGetImageFromCurrentImageContext()!
        
        UIGraphicsEndImageContext()
        
        return result
    }
    
    /// 异步绘制图片
    open func zz_asyncDrawImage(size: CGSize, isCircle: Bool = false, backColor: UIColor? = UIColor.white, finished: @escaping (_ image: UIImage) -> ()) {
        DispatchQueue.global().async {
            
            let key = "" + size.width.description + size.height.description + (backColor != nil ? backColor!.description : UIColor.clear.description)
            
            var backImg = cacheImageBg[key]
            
            let rect = CGRect(origin: CGPoint.zero, size: size)
            
            if backImg == nil && isCircle {
                
                backImg = UIImage.zz_clearCircleImageInSize(size: size)
                
                cacheImageBg[key] = backImg
            }
            
            UIGraphicsBeginImageContextWithOptions(size, backColor != nil, 0.0)
            
            self.draw(in: rect)
            
            backImg?.draw(in: rect)
            
            let result = UIGraphicsGetImageFromCurrentImageContext()!
            UIGraphicsEndImageContext()
            
            DispatchQueue.main.async {
                finished(result)
            }
        }
    }
    
    /// 中间透明圆的方图
    open class func zz_clearCircleImageInSize(size: CGSize, backColor: UIColor? = UIColor.white) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        let rect = CGRect(origin: CGPoint.zero, size: size)
        if let backColor = backColor {
            backColor.setFill()
            UIRectFill(rect)
        }
        
        // 透明圆
        let path = UIBezierPath(ovalIn: rect)
        path.addClip()
        UIColor.clear.setFill()
        UIRectFill(rect)
        
        
        let result = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return result
    }
}
