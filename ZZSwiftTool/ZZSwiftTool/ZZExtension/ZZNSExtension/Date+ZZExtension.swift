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
    func zz_string(withDateFormat format: String) -> String {
        zz_dateFormatter.dateFormat = format
        return zz_dateFormatter.string(from: self)
    }
}

public extension Date {
    
    /// 获取年份
    var zz_year: Int {
        return zz_calendar.component(.year, from: self)
    }
    
    /// 获取月份
    var zz_month: Int {
        return zz_calendar.component(.month, from: self)
    }
    
    /// 获取天
    var zz_day: Int {
        return zz_calendar.component(.day, from: self)
    }
    
    /// 获取小时
    var zz_hour: Int {
        return zz_calendar.component(.hour, from: self)
    }
    
    /// 获取分钟
    var zz_minute: Int {
        return zz_calendar.component(.minute, from: self)
    }
    
    /// 获取秒
    var zz_second: Int {
        return zz_calendar.component(.second, from: self)
    }
    
    /// 获取纳秒
    var zz_nanosecond: Int {
        return zz_calendar.component(.nanosecond, from: self)
    }
    
    /// 获取一周第几天，周日为0
    var zz_weekday: Int {
        return zz_calendar.component(.weekday, from: self)
    }
    
    /// 获取一个月第几周，不包括不完整的第一周在这个月
    var zz_weekdayOrdinal: Int {
        return zz_calendar.component(.weekdayOrdinal, from: self)
    }
    
    /// 获取一个月第几周，包括不完整的第一周在这个月
    var zz_weekOfMonth: Int {
        return zz_calendar.component(.weekOfMonth, from: self)
    }
    
    /// 一年的第几周
    var zz_weekOfYear: Int {
        return zz_calendar.component(.weekOfYear, from: self)
    }
    
    /// 是否今天
    var zz_isToday: Bool {
        return zz_calendar.isDateInToday(self)
    }
    
    /// 是否昨天
    var zz_isYestoday: Bool {
        return zz_calendar.isDateInYesterday(self)
    }
    
    /// 是否明天
    var zz_isTomorrow: Bool {
        return zz_calendar.isDateInTomorrow(self)
    }
    
    var zz_isWeekend: Bool {
        return zz_calendar.isDateInWeekend(self)
    }
    
    /// 是否闰年
    var zz_isLeapYear: Bool {
        let day = self.zz_day
        return (day % 400 == 0) || (day % 100 != 0 && day % 4 == 0)
    }
}

public extension Date {
    
    /// 在当前时间基础上添加一定时间
    ///
    /// - parameter component: 时间组件
    /// - parameter value:     时间值
    ///
    /// - returns: 一个新的时间，无法计算时返回 nil
    func zz_date(byAdding component: Calendar.Component, value: Int) -> Date? {
        
        return zz_calendar.date(byAdding: component, value: value, to: self)
    }
    
    
//    /// 指定确定的时间
//    ///
//    /// - parameter component: 时间组件
//    /// - parameter value:     时间值
//    ///
//    /// - returns: 一个新的时间，无法计算时返回 nil
//    func zz_date(bySetting component: Calendar.Component, value: Int) -> Date? {
//        return zz_calendar.date(bySetting: component, value: value, of: self)
//    }
    
    /// 是否同一天
    ///
    /// - parameter date: 要比较的Date对象
    ///
    /// - returns: 是否同一天
    func zz_isSameDay(asDate date: Date) -> Bool {
        return zz_calendar.isDate(self, inSameDayAs: date)
    }
}

public extension Date {
    /// 获取月份
    /// 中文 zh： ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"]
    /// 英语 en： ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    /// - parameter locale: Locale信息
    ///
    /// - returns: 月份描述
    func zz_monthSymbol(inLocale locale: Locale = Locale.current) -> String {
        var calendar = Calendar.current
        calendar.locale = locale
        return calendar.monthSymbols[self.zz_month - 1]
    }
    
    /// 获取月份
    /// 中文 zh： ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"]
    /// 英文 en： ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    /// - parameter locale: Locale信息
    ///
    /// - returns: 月份描述
    func zz_shortMonthSymbol(inLocale locale: Locale = Locale.current) -> String {
        var calendar = Calendar.current
        calendar.locale = locale
        return calendar.shortMonthSymbols[self.zz_month - 1]
    }
    
    /// 获取月份
    /// 中文 zh： ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
    /// 英文 en： ["J", "F", "M", "A", "M", "J", "J", "A", "S", "O", "N", "D"]
    /// - parameter locale: Locale信息
    ///
    /// - returns: 月份描述
    func zz_veryShortMonthSymbol(inLocale locale: Locale = Locale.current) -> String {
        var calendar = Calendar.current
        calendar.locale = locale
        return calendar.veryShortMonthSymbols[self.zz_month - 1]
    }

    
    /// 获取周几
    /// 中文 zh：["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"]
    /// 英文 en：["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    /// - parameter locale: Locale信息
    ///
    /// - returns: 周几描述
    func zz_weekdaySymbol(inLocale locale: Locale = Locale.current) -> String {
        var calendar = Calendar.current
        calendar.locale = locale
        return calendar.weekdaySymbols[self.zz_weekday - 1]
    }


    /// 获取周几
    /// 中国 zh：["周日", "周一", "周二", "周三", "周四", "周五", "周六"]
    /// 英文 en：["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
    /// - parameter locale: Locale信息
    ///
    /// - returns: 周几描述
    func zz_shortWeekdaySymbol(inLocale locale: Locale = Locale.current) -> String {
        var calendar = Calendar.current
        calendar.locale = locale
        return calendar.shortWeekdaySymbols[self.zz_weekday - 1]
    }
    
    /// 获取周几
    /// 中文 zh：["日", "一", "二", "三", "四", "五", "六"]
    /// 英文 en：["S", "M", "T", "W", "T", "F", "S"]
    /// - parameter locale: Locale信息
    ///
    /// - returns: 周几描述
    func zz_veryShortWeekdaySymbol(inLocale locale: Locale = Locale.current) -> String {
        var calendar = Calendar.current
        calendar.locale = locale
        return calendar.veryShortWeekdaySymbols[self.zz_weekday - 1]
    }
    
}

public extension Date {
    
    /// 是否是周末，以及周末的 DateInterval 对象，包含 起始时间 和 结束时间
    ///
    /// - returns: 时间间隔
    func zz_dateIntervalOfWeekend() -> DateInterval? {
        return zz_calendar.dateIntervalOfWeekend(containing: self)
    }
}
