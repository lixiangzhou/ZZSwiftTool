//
//  String+ZZExtension.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 2017/3/10.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import Foundation

extension String {
    
    /// 根据格式获取字符串的Date对象
    ///
    /// - parameter format: 时间格式
    ///
    /// - returns: 指定格式的时间对象
    public func zz_date(withDateFormat format: String) -> Date? {
        zz_dateFormatter.dateFormat = format
        return zz_dateFormatter.date(from: self)
    }
}
