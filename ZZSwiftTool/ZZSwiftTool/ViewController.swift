//
//  ViewController.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 2017/3/10.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var date = Date()
        print(date.zz_stringWithDateFormat(format: "yyyy/MM/dd HH:mm"))
        
        // Date 添加了 + - += -= 高级运输费用于处理时间
        date -= 3600
        
        // 还添加了 > < 用于比较时间
        
        print(date.zz_stringWithDateFormat(format: "yyyy/MM/dd HH:mm"))
        
        print(Date.distantPast)
    }


}

