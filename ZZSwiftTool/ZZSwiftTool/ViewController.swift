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
        
        let testView = view.zz_add(subview: TestView.zz_loadFromNib()!)
        testView.frame = CGRect(x: 30, y: 30, width: 100, height: 100)
        testView.backgroundColor = UIColor.red
        
        testView.zz_setCircle()
        
        testView.zz_setBorder(color: UIColor.gray, width: 0.5)
        
        print(testView.zz_controller)
    }

    
    

}

