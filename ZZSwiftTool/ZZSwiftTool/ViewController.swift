//
//  ViewController.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 2017/3/10.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        let date = Date()
        
        print(zz_calendar.date(bySettingHour: 10, minute: 10, second: 10, of: date)?.zz_string())
        print(zz_calendar.date(bySetting: .day, value: 2, of: date)?.zz_string())
        date.zz_date(byAdding: <#T##Calendar.Component#>, value: <#T##Int#>)
        
//        let newDate = date.zz_date(byAdding: .month, value: -1)
//        var datecomponents = DateComponents()
//        datecomponents.month = 4
//        datecomponents.day = 2
//        let newDate = zz_calendar.date(byAdding: datecomponents, to: date, wrappingComponents: true)
//        var components = DateComponents()
//        components.day = 31
////        components.hour = 3
//        
//        if let newDate = newDate {
//            print(newDate.zz_string())
//            print(zz_calendar.nextDate(after: newDate, matching: components, matchingPolicy: .strict, repeatedTimePolicy: .first, direction: .forward)?.zz_string() ?? "")
        
//        }
//        zz_calendar.zz_enumerateDates(fromDate: date, matchingComponents: components) { (date, _, _) in
//            print(date?.zz_string())
//        }
        
        
//        print(zz_calendar.nextDate(after: date, matching: components, matchingPolicy: .strict))
        
        
//        print(date.debugDescription)
//        let date2 = date.zz_date(byAdding: .day, value: -2)
//        print(date2)
//        let interval = date2?.zz_dateIntervalOfWeekend()
//        
//        print(TimeZone.autoupdatingCurrent)
//        
//        print(zz_calendar.date(bySettingHour: 10, minute: 10, second: 10, of: date)?.zz_string())
//        
//        print(interval)
        
        
//        var date2 = date.zz_date(byAdding: .day, value: -1)
//        
//        let range = zz_calendar.range(of: .minute, in: .day, for: date)
//        print(date2?.zz_isWeekend)
//        print(date.zz_weekday)
//        
//        print(date.zz_date(byAdding: .year, value: 1))
//        
//        print(date.zz_monthSymbol())
//        print(date.zz_shortMonthSymbol())
//        print(date.zz_weekdaySymbol())
//        print(date.zz_shortWeekdaySymbol())
//        print(date.zz_veryShortWeekdaySymbol())
        
        
        
//        var calendar = Calendar.current
//        calendar.locale = Locale(identifier: "en")
        
        /*
         era
         ["公元前", "公元"]
         ["公元前", "公元"]
         ==========
         month
         ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"]
         ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"]
         ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
         ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"]
         ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"]
         ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
         ==========
         weekday
         ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"]
         ["周日", "周一", "周二", "周三", "周四", "周五", "周六"]
         ["日", "一", "二", "三", "四", "五", "六"]
         ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"]
         ["周日", "周一", "周二", "周三", "周四", "周五", "周六"]
         ["日", "一", "二", "三", "四", "五", "六"]
         ==========
         am pm
         上午 下午
         */
        
//        print("era")
//        print(calendar.eraSymbols)
//        print(calendar.longEraSymbols)
//        
//        print("==========")
//        print("month")
//        print(calendar.monthSymbols)
//        print(calendar.shortMonthSymbols)
//        print(calendar.veryShortMonthSymbols)
//        print(calendar.standaloneMonthSymbols)
//        print(calendar.shortStandaloneMonthSymbols)
//        print(calendar.veryShortStandaloneMonthSymbols)
//        
//        print("==========")
//        print("weekday")
//        
//        print(calendar.weekdaySymbols)
//        print(calendar.shortWeekdaySymbols)
//        print(calendar.veryShortWeekdaySymbols)
//        print(calendar.standaloneWeekdaySymbols)
//        print(calendar.shortStandaloneWeekdaySymbols)
//        print(calendar.veryShortStandaloneWeekdaySymbols)
//        
//        
//        print("==========")
//        print("am pm")
//        print(calendar.amSymbol, calendar.pmSymbol)
    }

}

