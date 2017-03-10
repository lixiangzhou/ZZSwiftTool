//
//  UIAlertController+ZZExtension.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 2017/3/10.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

extension UIAlertController {
    open class func zz_show(fromController: UIViewController, style: UIAlertControllerStyle = .alert, title: String? = nil, message: String? = nil,
                            action1Title: String, action1Style: UIAlertActionStyle = .default, action1Handler:((UIAlertAction) -> Void)? = nil,
                            action2Title: String? = nil, action2Style: UIAlertActionStyle = .default, action2Handler: (@escaping(UIAlertAction) -> Void), completion: (() -> Void)? = nil) -> UIAlertController {
        
        let alertVc = UIAlertController(title: title, message: message, preferredStyle: style)
        
        alertVc.addAction(UIAlertAction(title: action1Title, style: action1Style, handler: action1Handler))
        
        if let action2Title = action2Title {
            alertVc.addAction(UIAlertAction(title: action2Title, style: action2Style, handler: action2Handler))
        }
        
        fromController.present(alertVc, animated: true, completion: completion)
        return alertVc
    }
}
