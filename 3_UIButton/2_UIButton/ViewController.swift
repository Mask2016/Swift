//
//  ViewController.swift
//  2_UIButton
//
//  Created by apple on 15/11/7.
//  Copyright © 2015年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //创建并设置button的类型
        /*
        case Custom // 自定义 无类型
        @available(iOS 7.0, *)
        case System // 标准的系统类型
        
        case DetailDisclosure
        case InfoLight
        case InfoDark//详情的按钮样式
        case ContactAdd//添加的按钮样式
        */
        let button:UIButton = UIButton(type: UIButtonType.Custom)
        button.frame=CGRectMake(100, 100, 100, 100)
        button.backgroundColor = UIColor.redColor()
        self.view.addSubview(button)
        //添加事件
        button.addTarget(self, action: Selector("click:"), forControlEvents:UIControlEvents.TouchUpInside)
        //设置按钮的标题
        button.setTitle("按钮", forState: UIControlState.Normal)
        //设置按钮的背景图片
        //button.setBackgroundImage(UIImage(named: "灯泡.jpg"), forState: UIControlState.Normal)
        //设置按钮图片
        button.setImage(UIImage(named: "灯泡.jpg"), forState: UIControlState.Normal)
        //设置button内容区域的偏移量
        button.contentEdgeInsets = UIEdgeInsetsMake(-10, -10, 0, 0)
        //开启按钮的点击视觉效果
        button.showsTouchWhenHighlighted=true
        //设置高亮状态的按钮标题
        button.setTitle("新标题", forState: UIControlState.Highlighted)
        
    }

    func click(btn:UIButton){
        print("按钮被点击了")
        btn.backgroundColor = UIColor(red: (CGFloat)(random()%255)/255 , green: (CGFloat)(random()%255)/255, blue: (CGFloat)(random()%255)/255, alpha: 1)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

