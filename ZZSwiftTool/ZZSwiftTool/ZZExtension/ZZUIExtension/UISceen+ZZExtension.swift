//
//  UISceen+ZZExtension.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 2017/3/10.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

extension UIScreen {
    
    class var zz_height: CGFloat {
        return UIScreen.main.bounds.height
    }
    
    class var zz_width: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    class var zz_scale: CGFloat {
        return UIScreen.main.scale
    }
    
    class var zz_brightness: CGFloat {
        set {
            UIScreen.main.brightness = newValue
        }
        
        get {
            return UIScreen.main.brightness
        }
    }
}
