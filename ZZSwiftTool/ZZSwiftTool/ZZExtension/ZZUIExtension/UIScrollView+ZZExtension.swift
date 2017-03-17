//
//  UIScrollView+ZZExtension.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 2017/3/17.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

extension UIScrollView {
    /// 滚动到顶部
    ///
    /// - parameter animated:  是否动画
    /// - parameter withInset: 是否包含 inset.top
    open func zz_scrollToTop(animated: Bool = true, withInset: Bool = true) {
        var offset = contentOffset
        offset.y = withInset ? -contentInset.top : 0
        setContentOffset(offset, animated: animated)
    }
    
    /// 滚动到底部
    ///
    /// - parameter animated:  是否动画
    /// - parameter withInset: 是否包含 inset.bottom
    open func zz_scrollToBottom(animated: Bool = true, withInset: Bool = true) {
        var offset = contentOffset
        let dis = contentSize.height - bounds.height
        offset.y = dis + (withInset ? contentInset.bottom : 0)
        setContentOffset(offset, animated: animated)
    }
    
    /// 滚动到左边
    ///
    /// - parameter animated:  是否动画
    /// - parameter withInset: 是否包含 inset.left
    open func zz_scrollToLeft(animated: Bool = true, withInset: Bool = true) {
        var offset = contentOffset
        offset.x = withInset ? -contentInset.left : 0
        setContentOffset(offset, animated: animated)
    }
    
    /// 滚动到右边
    ///
    /// - parameter animated:  是否动画
    /// - parameter withInset: 是否包含 inset.right
    open func zz_scrollToRight(animated: Bool = true, withInset: Bool = true) {
        var offset = contentOffset
        let dis = contentSize.width - bounds.width
        offset.x = dis + (withInset ? contentInset.right : 0)
        setContentOffset(offset, animated: animated)
    }
}

