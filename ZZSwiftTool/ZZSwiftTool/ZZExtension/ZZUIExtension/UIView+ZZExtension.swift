//
//  UIView+ZZExtension.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 2017/3/10.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

extension UIView {
    open var zz_controller: UIViewController? {
        var responder = next
        while responder != nil {
            if responder!.isKind(of: UIViewController.self) {
                return responder as? UIViewController
            }
            responder = responder?.next
        }
        return nil
    }
    
    open func zz_removeAllSubviews() {
        for subview in subviews {
            subview.removeFromSuperview()
        }
    }
}

extension UIView {
    /// 设置圆形
    open  func zz_setCircle() {
        zz_setCorner(radius: min(bounds.width, bounds.height) * 0.5, masksToBounds: true)
    }
    
    /// 设置圆角
    open func zz_setCorner(radius: CGFloat, masksToBounds: Bool) {
        layer.cornerRadius = radius
        layer.masksToBounds = masksToBounds
    }
    
    open func zz_setBorder(color: UIColor, width: CGFloat) {
        layer.borderColor = color.cgColor
        layer.borderWidth = width
    }
}

extension UIView {
    /// 添加子控件
    open func zz_add(subview: UIView) -> UIView {
        return zz_add(subview: subview, frame: CGRect.zero)
    }
    
    /// 添加子控件
    open func zz_add(subview: UIView, frame: CGRect) -> UIView {
        addSubview(subview)
        subview.frame = frame
        return subview
    }
    
}

extension UIView {
    /// nib 加载控件
    open class func zz_loadFrom(nibName: String) -> UIView? {
        return UINib(nibName: nibName, bundle: nil).instantiate(withOwner: nil, options: nil).last as? UIView
    }
    
    /// nib 加载控件
    open class func zz_loadFromNib() -> UIView? {
        let nibName = NSStringFromClass(self.classForCoder()).components(separatedBy: ".").last!
        return UINib(nibName: nibName, bundle: nil).instantiate(withOwner: nil, options: nil).last as? UIView
    }
}

extension UIView {
    /// view生成图片
    open func zz_snapshotImage() -> UIImage {
        return zz_cropImage(inRect: bounds)
    }
    
    /// allRect = CGRect.zero 表示bounds
    open func zz_cropImage(inRect: CGRect) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, true, 0)
        UIRectClip(inRect)
        self.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}

extension UIView {
    var zz_x: CGFloat {
        get {
            return frame.origin.x
        }
        set {
            frame.origin.x = newValue
        }
    }
    
    var zz_y: CGFloat {
        get {
            return frame.origin.y
        }
        set {
            frame.origin.y = newValue
        }
    }
    
    var zz_width: CGFloat {
        get {
            return frame.width
        }
        set {
            frame.size.width = newValue
        }
    }
    
    var zz_height: CGFloat {
        get {
            return frame.height
        }
        set {
            frame.size.height = newValue
        }
    }
}

