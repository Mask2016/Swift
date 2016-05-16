//
//  ViewController.swift
//  9_UISegementControl
//
//  Created by apple on 15/11/22.
//  Copyright © 2015年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let seg:UISegmentedControl = UISegmentedControl(frame: CGRectMake(20,100,280,40))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.addSubview(seg)
        //设置分段控制器的按钮
        seg.insertSegmentWithTitle("第一一一一一一一一一个按钮", atIndex: 0, animated: true)
        seg.insertSegmentWithTitle("第二个按钮", atIndex: 1, animated: true)
        //添加点击事件
        seg.addTarget(self, action: Selector("clickSeg:"), forControlEvents: UIControlEvents.ValueChanged)
        //设置分段控制器是否保持选中状态
       // seg.momentary = true
        //设置宽度的自适应
        seg.apportionsSegmentWidthsByContent = true
        //手动设置某个item的宽度
        seg.setWidth(60, forSegmentAtIndex: 0)
        //设置内容区域的偏移量
        seg.setContentOffset(CGSizeMake(10, 10), forSegmentAtIndex: 1)
        //手动设置默认选中的item
        seg.selectedSegmentIndex=0
        //设置渲染衍射
        seg.tintColor = UIColor.redColor()
    }

    func clickSeg(seg:UISegmentedControl){
       print(seg.selectedSegmentIndex,"按钮被点击")
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //动态插入按钮
         seg.insertSegmentWithTitle("第三个按钮", atIndex: 1, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

