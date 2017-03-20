//
//  String+ZZExtension.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 2017/3/10.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

public extension String {
    
    /// 根据格式获取字符串的Date对象
    ///
    /// - parameter format: 时间格式
    ///
    /// - returns: 指定格式的时间对象
    func zz_date(withDateFormat format: String) -> Date? {
        zz_dateFormatter.dateFormat = format
        return zz_dateFormatter.date(from: self)
    }
    
    
    /// 获取字符串的size
    ///
    /// - parameter size:       限制大小
    /// - parameter fontSize:   字体大小
    ///
    /// - returns: 字符串的size
    func zz_size(withLimitSize size: CGSize, fontSize: CGFloat) -> CGSize {
        let size = (self as NSString).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: fontSize)], context: nil).size
        return CGSize(width: ceil(size.width), height: ceil(size.height))
    }
    
    /// 获取字符串的size
    ///
    /// - parameter size:       限制大小
    /// - parameter fontSize:   字体大小
    ///
    /// - returns: 字符串的size
    func zz_size(withLimitWidth width: CGFloat, fontSize: CGFloat) -> CGSize {
        return zz_size(withLimitSize: CGSize(width: width, height: CGFloat.greatestFiniteMagnitude), fontSize: fontSize)
    }
    
    /// 获取字符串的size
    ///
    /// - parameter size:       限制大小
    /// - parameter fontSize:   字体大小
    ///
    /// - returns: 字符串的size
    func zz_size(withLimitHeight height: CGFloat, fontSize: CGFloat) -> CGSize {
        return zz_size(withLimitSize: CGSize(width: CGFloat.leastNormalMagnitude, height: height), fontSize: fontSize)
    }
}
