//
//  UISceen+ZZExtension.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 2017/3/10.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

extension UIScreen {
    /// 屏幕高度
    class open var zz_height: CGFloat {
        return UIScreen.main.bounds.height
    }
    
    /// 屏幕宽度
    class open var zz_width: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    /// 屏幕的 scale
    class open var zz_scale: CGFloat {
        return UIScreen.main.scale
    }
    
    /// 屏幕亮度
    class open var zz_brightness: CGFloat {
        set {
            UIScreen.main.brightness = newValue
        }
        
        get {
            return UIScreen.main.brightness
        }
    }
}
