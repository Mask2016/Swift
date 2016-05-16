//
//  ViewController.swift
//  28_UIDatePicker
//
//  Created by apple on 16/1/1.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let datePicker:UIDatePicker = UIDatePicker(frame: CGRectMake(20,100,280,200))
        //设置显示模式
        datePicker.datePickerMode = UIDatePickerMode.CountDownTimer
        self.view.addSubview(datePicker)
        //添加监听方法
        datePicker.addTarget(self, action: Selector("changeDate:"), forControlEvents: UIControlEvents.ValueChanged)
    }
    
    func changeDate(datePicker:UIDatePicker){
        
        let date = datePicker.date;
        print(date)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

