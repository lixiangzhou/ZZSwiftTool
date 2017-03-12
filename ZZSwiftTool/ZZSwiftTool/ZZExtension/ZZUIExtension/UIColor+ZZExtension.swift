//
//  UIColor+ZZExtension.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 17/3/12.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1)
    }
    
    static var zz_random: UIColor {
        let red = arc4random() % 256
        let green = arc4random() % 256
        let blue = arc4random() % 256
        
        return UIColor(red: Int(red), green: Int(green), blue: Int(blue))
    }
    
    static var zz_global: UIColor {
        return UIColor(red: 35, green: 215, blue: 153)
    }
}
