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
//        testView.zz_cropImage(inRect: CGRect(origin: CGPoint.zero, size: testView.bounds.size * 1)) { (image) in
//            try? UIImagePNGRepresentation(image)?.write(to: URL(fileURLWithPath: "/Users/lixiangzhou/Desktop/A.png"))
//        }
        
        try? UIImagePNGRepresentation(testView.zz_cropImage(inRect: CGRect(x: 0, y: 0, width: 50, height: 50)))?.write(to: URL(fileURLWithPath: "/Users/lixiangzhou/Desktop/AA.png"))
    }
    
    

}

