//
//  UITextField+ZZExtension.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 2017/3/17.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

extension UITextField {
    
    
    /// 选中所有文字
    open func zz_selectAllText() {
        guard let range = textRange(from: beginningOfDocument, to: endOfDocument) else {
            return
        }
        selectedTextRange = range
    }
    
    
    /// 选中指定范围的文字
    ///
    /// - parameter selectedRange: 指定的范围
    open func zz_set(selectedRange: NSRange) {
        
        guard let start = position(from: beginningOfDocument, offset: selectedRange.location),
            let end = position(from: beginningOfDocument, offset: NSMaxRange(selectedRange)) else {
                return;
        }
        selectedTextRange = textRange(from: start, to: end)
    }
}
