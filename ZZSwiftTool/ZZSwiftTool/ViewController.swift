//
//  ViewController.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 2017/3/10.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var testView: TestView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        testView = view.zz_add(subview: TestView.zz_loadFromNib()!) as! TestView
//        testView.frame = CGRect(x: 30, y: 30, width: 100, height: 100)
//        testView.backgroundColor = UIColor.red
//        
//        testView.zz_setCircle()
//        
//        testView.zz_setBorder(color: UIColor.gray, width: 0.5)
//        
//        try? UIImagePNGRepresentation(testView.zz_snapshotImage())?.write(to: URL(fileURLWithPath: "/Users/lixiangzhou/Desktop/AA.png"))
        
        let img = UIImage(contentsOfFile: "/Users/lixiangzhou/Desktop/AA@2x.png")!
        let rect = CGRect(x: 0, y: 0, width: 50, height: 50)
        try? UIImagePNGRepresentation(img.zz_crop(inRect: rect)!)!.write(to: URL(fileURLWithPath: "/Users/lixiangzhou/Desktop/AB.png"))
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        _ = UIAlertController.zz_show(fromController: self, style: .alert, title: "Test", message: "Message", action1Title: "t1", action1Handler: { (_) in
            print("act1")
            }, action2Title: "t2", action2Handler: { (_) in
                print("act2")
            }) { 
                print("finished")
        }
    }
    
    

}

