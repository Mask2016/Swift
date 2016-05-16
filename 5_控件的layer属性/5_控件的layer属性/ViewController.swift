//
//  ViewController.swift
//  5_控件的layer属性
//
//  Created by apple on 15/11/13.
//  Copyright © 2015年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let imageView = UIImageView(frame: CGRectMake(100,100,100,100))
        imageView.backgroundColor = UIColor.redColor()
        self.view.addSubview(imageView)
        //设置圆角
        //imageView.layer.masksToBounds=true
        //imageView.layer.cornerRadius = 50
        //设置边框
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor.greenColor().CGColor
        //设置阴影
        imageView.layer.shadowColor = UIColor.purpleColor().CGColor
        imageView.layer.shadowOffset = CGSizeMake(20, 20)
        imageView.layer.shadowOpacity = 1;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

