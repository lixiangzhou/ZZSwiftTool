//
//  DispatchQueue+ZZExtension.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 17/3/19.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import Foundation


extension DispatchQueue {
    
    /// 延迟执行
    ///
    /// - Parameters:
    ///   - delay: 时间
    ///   - execute: 执行的操作
    open func zz_after(_ delay: TimeInterval, execute: @escaping () -> Void) {
        asyncAfter(deadline: .now() + delay, execute: execute)
    }
}
