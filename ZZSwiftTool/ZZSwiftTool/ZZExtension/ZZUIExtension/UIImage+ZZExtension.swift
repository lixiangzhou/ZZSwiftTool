//
//  UIImage+ZZExtension.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 2017/3/10.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

extension UIImage {
    open func zz_crop(inRect: CGRect) -> UIImage? {
        let scale = UIScreen.zz_scale
        let dotRect = CGRect(x: inRect.zz_x * scale, y: inRect.zz_y * scale, width: inRect.width * scale, height: inRect.height * scale)
        
        guard let cgimg = cgImage?.cropping(to: dotRect) else {
            return nil
        }
        
        return UIImage(cgImage: cgimg, scale: scale, orientation: .up)
    }
}
