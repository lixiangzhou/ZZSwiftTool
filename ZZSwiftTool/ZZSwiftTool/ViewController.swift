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

        let label = view.zz_add(subview: UILabel(), frame: CGRect(x: 0, y: 0, width: 200, height: 200)) as! UILabel
        label.center = view.center
        label.backgroundColor = UIColor.red
        label.numberOfLines = 0
        
        label.text = "hehahahahhahahahkdjfdklsajfkkkkdls;fjdklsfjdsl;fjkl;jksafjaiosfjuiaosfndsonvadhosfiohoisfh"
    }

}

