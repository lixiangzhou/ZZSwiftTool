//
//  CGRect+ZZExtension.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 2017/3/10.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

extension CGSize {
    static func * (size: CGSize, factor: CGFloat) -> CGSize {
        return CGSize(width: size.width * factor, height: size.height * factor)
    }
    
    static func / (size: CGSize, factor: CGFloat) -> CGSize {
        return CGSize(width: size.width / factor, height: size.height / factor)
    }
    
    static func + (size: CGSize, factor: CGFloat) -> CGSize {
        return CGSize(width: size.width + factor, height: size.height + factor)
    }
    
    static func - (size: CGSize, factor: CGFloat) -> CGSize {
        return CGSize(width: size.width - factor, height: size.height - factor)
    }
}


extension CGRect {
    var zz_x: CGFloat {
        return origin.x
    }
    
    var zz_y: CGFloat {
        return origin.y
    }
}

