//
//  UILabel+ZZExtension.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 17/3/12.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit


extension UILabel {
    convenience init(text: String = "", fontSize: CGFloat = 12, textColor: UIColor? = UIColor.darkGray) {
        self.init()
        
        font = UIFont.systemFont(ofSize: fontSize)
        self.textColor = textColor
        self.text = text
        numberOfLines = 0
        
        sizeToFit()
    }
}
