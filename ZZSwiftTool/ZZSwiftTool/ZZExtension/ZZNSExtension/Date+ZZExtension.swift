//
//  Date+ZZExtension.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 2017/3/10.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import Foundation

public extension Date {
    
    /// 返回指定格式的时间字符串
    ///
    /// - parameter format: 时间格式
    ///
    /// - returns: 指定格式的时间字符串
    public func zz_string(withDateFormat format: String) -> String {
        zz_dateFormatter.dateFormat = format
        return zz_dateFormatter.string(from: self)
    }
}
