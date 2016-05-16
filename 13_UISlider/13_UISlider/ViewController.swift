//
//  ViewController.swift
//  13_UISlider
//
//  Created by apple on 15/11/29.
//  Copyright © 2015年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //创建一个滑块对象
    let slider:UISlider = UISlider(frame: CGRectMake(20,100,280,40))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
               //添加一个控制方法
        slider.addTarget(self, action: #selector(ViewController.slider(_:)), forControlEvents: UIControlEvents.ValueChanged)
        //设置滑块的取值范围
        slider.maximumValue = 100
        slider.minimumValue = 1
        //设置是否在滑动时持续触发方法
        slider.continuous = false
        //设置滑动轴的颜色
        slider.minimumTrackTintColor = UIColor.redColor()
        slider.maximumTrackTintColor = UIColor.greenColor()
        //设置滑块的颜色
        slider.thumbTintColor = UIColor.orangeColor()
        self.view.addSubview(slider)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        slider.setValue((Float)(rand()%99)+1, animated: true)
    }

    func slider(slider:UISlider){
        print(slider.value)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

