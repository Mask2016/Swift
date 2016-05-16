//
//  ViewController.swift
//  8_UISwitch
//
//  Created by apple on 15/11/19.
//  Copyright © 2015年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //创建一个开关控件
        let mySwitch:UISwitch = UISwitch(frame: CGRectMake(100,100,100,100))
        //添加触发事件
        mySwitch.addTarget(self, action: Selector("switchClick:"), forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(mySwitch)
        //自定义UI
        //设置滑块的颜色
        mySwitch.thumbTintColor = UIColor.redColor()
        //设置开关开启的颜色
        mySwitch.onTintColor = UIColor.blueColor()
        //关闭开关的颜色
        mySwitch.tintColor = UIColor.purpleColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func switchClick(swi:UISwitch){
        if swi.on{
            self.view.backgroundColor = UIColor.grayColor()
        }else{
            self.view.backgroundColor = UIColor.whiteColor()
        }
    }

}

