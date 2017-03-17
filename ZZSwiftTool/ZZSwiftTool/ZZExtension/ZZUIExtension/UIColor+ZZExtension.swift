//
//  UIColor+ZZExtension.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 17/3/12.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

extension UIColor {
    
    /// 快速创建颜色
    ///
    /// - parameter red:   红
    /// - parameter green: 绿
    /// - parameter blue:  蓝
    ///
    /// - returns: 生成的颜色
    convenience init(red: Int, green: Int, blue: Int) {
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1)
    }
    
    /// 随机色
    open class var zz_random: UIColor {
        let red = arc4random() % 256
        let green = arc4random() % 256
        let blue = arc4random() % 256
        
        return UIColor(red: Int(red), green: Int(green), blue: Int(blue))
    }
    
}
