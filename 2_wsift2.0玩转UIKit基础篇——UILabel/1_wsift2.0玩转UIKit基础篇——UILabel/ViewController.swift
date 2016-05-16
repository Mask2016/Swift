//
//  ViewController.swift
//  1_wsift2.0玩转UIKit基础篇——UILabel
//
//  Created by apple on 15/11/4.
//  Copyright © 2015年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //创建一个label对面
        let label:UILabel = UILabel(frame: CGRectMake(20,100,280,100))
        //设置label上的文字
        label.text = "I am a label, i like ios , i like phone"
        //设置字体
        label.font = UIFont.boldSystemFontOfSize(25)
        //设置字体的颜色
        label.textColor = UIColor.redColor()
        //设置label的背景颜色
        label.backgroundColor = UIColor.blueColor()
        //设置文字的对其方式
        label.textAlignment = NSTextAlignment.Center
        //设置label的阴影
        //label.shadowColor = UIColor.orangeColor()
        //label.shadowOffset = CGSizeMake(10, 10)
        //设置label的行数 0 为无限行
        label.numberOfLines = 0
        self.view.addSubview(label)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

