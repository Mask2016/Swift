//
//  ViewController.swift
//  16_UIActivityIndicatorView
//
//  Created by apple on 15/12/4.
//  Copyright © 2015年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //创建一个活动提示控件
//    let activity:UIActivityIndicatorView = UIActivityIndicatorView(frame: CGRectMake(320/2-10,568/2,20,20))
    let activity:UIActivityIndicatorView = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.WhiteLarge)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.grayColor()
        activity.center = CGPointMake(160,200)
        self.view.addSubview(activity)
        //设置颜色
        activity.color = UIColor.redColor()
        //开始活动
        activity.startAnimating()
        
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //停止活动
        activity.stopAnimating()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

