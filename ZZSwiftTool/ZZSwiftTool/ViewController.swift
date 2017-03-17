//
//  ViewController.swift
//  ZZSwiftTool
//
//  Created by lixiangzhou on 2017/3/10.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView = view.zz_add(subview: UIScrollView(), frame: CGRect(x: 50, y: 50, width: 200, height: 300)) as! UIScrollView
        scrollView.backgroundColor = UIColor.red
        scrollView.delegate = self
        scrollView.contentInset = UIEdgeInsetsMake(10, 20, 30, 40)
        scrollView.contentSize = CGSize(width: 200, height: 400)
        
        scrollView.zz_add(subview: UIView(), frame: CGRect(x: 0, y: 0, width: 200, height: 400)).backgroundColor = UIColor.blue
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        scrollView.zz_scrollToRight(animated: true, withInset: true)
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset)
    }
    

}

