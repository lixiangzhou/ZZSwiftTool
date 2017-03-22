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

        view.backgroundColor = UIColor(stringHexValue: "0x1496FA66")
//        print(String(16, radix: 2))
        // 20 150 250 102
        print(view.backgroundColor?.rgbaValue)
        print(view.backgroundColor?.rgbaIntValue)
        print(view.backgroundColor?.rgbaHexStringValue)
        print(view.backgroundColor?.rgbValue)

//            let red = String(Int(r * 255), radix: 16)
//            let green = String(Int(g * 255), radix: 16)
//            let blue = String(Int(b * 255), radix: 16)
//            let alpha = String(Int(a * 255), radix: 16)
        
        
    }
    

}

