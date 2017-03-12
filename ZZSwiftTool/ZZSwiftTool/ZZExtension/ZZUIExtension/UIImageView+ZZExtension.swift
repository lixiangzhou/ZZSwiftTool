//
//  UIImageView+ZZExtension.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 17/3/12.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

enum UIImageViewCircleMode {
    case drawing, doubleImage
}

/// 缓存图片
private var cachedImage = [String: UIImage]()

extension UIImageView {
    convenience init(frame: CGRect, image: UIImage?, isCircle: Bool = false, backColor: UIColor? = UIColor.white, mode: UIImageViewCircleMode = .doubleImage) {
        self.init(frame: frame)
        
        let size = frame.size
        if mode == .drawing {
            image?.zz_asyncDrawImage(size: size, isCircle: isCircle, backColor: backColor, finished: { (img) in
                self.image = img
            })
        } else if mode == .doubleImage {
            let size = frame.size
            let key = "" + size.width.description + size.height.description + (backColor != nil ? backColor!.description : UIColor.clear.description)
            
            var corverImg = cachedImage[key]
            
            if corverImg == nil && isCircle {
                corverImg = UIImage.zz_clearCircleImageInSize(size: size, backColor: backColor)
            }
            
            self.image = image
            
            let coverView = UIImageView(frame: CGRect(origin: CGPoint.zero, size: size))
            coverView.image = corverImg
            addSubview(coverView)
        }
    }
}
