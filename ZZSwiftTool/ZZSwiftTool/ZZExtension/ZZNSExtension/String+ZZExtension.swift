//
//  String+ZZExtension.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 2017/3/10.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import Foundation

extension String {
    public func zz_dateWithFormat(format: String) -> Date? {
        zz_dateFormatter.dateFormat = format
        return zz_dateFormatter.date(from: self)
    }
}
