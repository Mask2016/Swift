//
//  ViewController.swift
//  16_UIProgressView
//
//  Created by apple on 15/12/6.
//  Copyright © 2015年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let progress:UIProgressView = UIProgressView(progressViewStyle: UIProgressViewStyle.Default)
        progress.frame = CGRectMake(20, 100, 280, 20)
        self.view.addSubview(progress)
        //设置进度条的进度 0-1 之间
        progress.progress = 0.5
        //走过的进度颜色
        progress.progressTintColor = UIColor.redColor()
        //设置没走过的进度颜色
        progress.trackTintColor = UIColor.greenColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

