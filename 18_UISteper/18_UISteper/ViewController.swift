//
//  ViewController.swift
//  18_UISteper
//
//  Created by apple on 15/12/13.
//  Copyright © 2015年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let label:UILabel = UILabel(frame: CGRectMake(100,300,100,100))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let steper:UIStepper = UIStepper(frame: CGRectMake(100,100,100,40))
        //添加方法
        steper.addTarget(self, action: Selector("change:"), forControlEvents: UIControlEvents.ValueChanged)
        //设置最大值和最小值
        steper.maximumValue = 10;
        steper.minimumValue = 0;
        //设置步长
        steper.stepValue = 2;
        //是否连续触发响应函数
        steper.continuous=false
        //值是否持续改变
        steper.autorepeat=false
        //是否可以循环触发
        steper.wraps=true
        //设置控件的颜色
        steper.tintColor = UIColor.redColor()
        self.view.addSubview(steper)
        
        label.text = String(format: "%f", steper.value)
        self.view.addSubview(label)
        
    }

    
    func change(steper:UIStepper){
       label.text = String(format: "%f", steper.value)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

