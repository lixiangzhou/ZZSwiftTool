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

        print(NSUserName())
        print(NSFullUserName())
        print(NSOpenStepRootDirectory())
        print(NSHomeDirectory())
        print(NSTemporaryDirectory())
        print(zz_filePath(with: .documentDirectory, fileName: "test.txt"))
        print(zz_filePath(with: .cachesDirectory, fileName: "test.txt"))
        print(zz_filePath(with: .libraryDirectory, fileName: "test.txt"))
        print(zz_filePath(with: .tempDirectory, fileName: "test.txt"))
        
    }

}

