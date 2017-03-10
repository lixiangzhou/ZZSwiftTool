//
//  Date+ZZExtension.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 2017/3/10.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import Foundation

extension Date {
    public func zz_stringWithDateFormat(format: String) -> String {
        zz_dateFormatter.dateFormat = format
        return zz_dateFormatter.string(from: self)
    }
}
