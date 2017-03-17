//
//  ViewController.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 2017/3/10.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var field: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        field = view.zz_add(subview: UITextField(), frame: CGRect(x: 50, y: 50, width: 200, height: 40)) as! UITextField
        field.text = "Hello World"
        field.backgroundColor = UIColor.red
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        field.zz_selectAllText()
    }
    
    

}

