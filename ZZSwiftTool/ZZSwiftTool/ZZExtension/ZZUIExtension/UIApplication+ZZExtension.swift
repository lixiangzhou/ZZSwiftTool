//
//  UIApplication+ZZExtension.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 2017/3/21.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

public let zz_application = UIApplication.shared

public extension UIApplication {
    
    
    /// .documentDirectory URL
    var zz_documentURL: URL {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last!
    }
    
    /// .documentDirectory PATH
    var zz_documentPath: String {
        return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
    }
    
    /// .cachesDirectory URL
    var zz_cachesURL: URL {
        return FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).last!
    }
    
    /// .cachesDirectory PATH
    var zz_cachesPath: String {
        return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
    }
    
    /// .libraryDirectory URL
    var zz_libraryURL: URL {
        return FileManager.default.urls(for: .libraryDirectory, in: .userDomainMask).last!
    }
    
    /// .libraryDirectory PATH
    var zz_libraryPath: String {
        return NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true).first!
    }
    
    /// 应用 identifier
    var zz_appId: String {
        return Bundle.main.infoDictionary!["CFBundleIdentifier"] as! String
    }
    
    
    /// 应用名称
    var zz_appName: String {
        return Bundle.main.infoDictionary!["CFBundleName"] as! String
    }
    
    /// 应用版本号
    var zz_appVersion: String {
        return Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String
    }
    
    /// 应用构建版本号
    var zz_appBuildVersion: String {
        return Bundle.main.infoDictionary!["CFBundleVersion"] as! String
    }
}
