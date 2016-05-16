//
//  ViewController.swift
//  4_UIImageView
//
//  Created by apple on 15/11/9.
//  Copyright © 2015年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //创建一个imageView
        let imageView:UIImageView = UIImageView(frame: CGRectMake(100, 100, 100, 100))
        //给imageView设置图片
        imageView.image = UIImage(named: "跳-1-0.png")
        //设置imageView的背景颜色
        imageView.backgroundColor = UIColor.grayColor()
        //设置imageView的高亮图片
        imageView.highlightedImage = UIImage(named: "跳-1-1.png")
        //设置imageView为高亮状体
        //imageView.highlighted = true
        self.view.addSubview(imageView)
        
        
        //设置imageView的动画效果
        var array:Array<UIImage!> = Array()
        for i in 0  ..< 4  {
            let image:UIImage? = UIImage(named: String(format: "跳-1-%d.png", i))
            array.append(image!)
        }
        //设置imageView的动画数组
        imageView.animationImages = array as? [UIImage]
        //设置动画的播放次数
        imageView.animationRepeatCount = 0
        //设置播放一轮的事件
        imageView.animationDuration = 1.5
        //开始播放动画
        imageView.startAnimating()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

