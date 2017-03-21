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

        print(UIApplication.shared.zz_appId)
        print(UIApplication.shared.zz_appName)
        print(UIApplication.shared.zz_appVersion)
        print(UIApplication.shared.zz_appBuildVersion)
        
        
        print(UIApplication.shared.zz_documentURL)
        print(UIApplication.shared.zz_documentPath)
        
        print(zz_application.zz_cachesURL)
        print(zz_application.zz_cachesPath)
        
        print(zz_application.zz_libraryURL)
        print(zz_application.zz_libraryPath)
        
        
    }

}

