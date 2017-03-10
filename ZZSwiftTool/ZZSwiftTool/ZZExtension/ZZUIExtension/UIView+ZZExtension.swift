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
    open  func zz_setCircle() {
        zz_setCorner(radius: min(bounds.width, bounds.height) * 0.5, masksToBounds: true)
    }
    
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
    open func zz_add(subview: UIView) -> UIView {
        return zz_add(subview: subview, frame: CGRect.zero)
    }
    
    open func zz_add(subview: UIView, frame: CGRect) -> UIView {
        addSubview(subview)
        subview.frame = frame
        return subview
    }
    
}

extension UIView {
    open class func zz_loadFrom(nibName: String) -> UIView? {
        return UINib(nibName: nibName, bundle: nil).instantiate(withOwner: nil, options: nil).last as? UIView
    }
    
    open class func zz_loadFromNib() -> UIView? {
        let nibName = NSStringFromClass(self.classForCoder()).components(separatedBy: ".").last!
        return UINib(nibName: nibName, bundle: nil).instantiate(withOwner: nil, options: nil).last as? UIView
    }
}

extension UIView {
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
