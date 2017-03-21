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

        print(zz_device.zz_type)
        print(zz_device.zz_version)
        
        //89246FA1-2B15-4C75-B43E-8A1D0717DAC3
        //89246FA1-2B15-4C75-B43E-8A1D0717DAC3
        // 4F6B7D63-EECC-4315-B9A8-04358B2C0470
        // 4F6B7D63-EECC-4315-B9A8-04358B2C0470
        print(zz_device.identifierForVendor?.uuidString)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(UIDevice.current.identifierForVendor?.uuidString)
    }

}

