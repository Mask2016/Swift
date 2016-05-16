//
//  ViewController.swift
//  17_UIPageControl
//
//  Created by apple on 15/12/13.
//  Copyright © 2015年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.redColor()
        //创建一个分页控制器
        let page:UIPageControl = UIPageControl(frame: CGRectMake(100,100,100,30))
        //设置分页页数
        page.numberOfPages = 6
        //设置当前的页码
        page.currentPage=3
        //设置只有一页时是否自动隐藏
        page.hidesForSinglePage=true
        //设置分页控制器的当前页颜色
        page.currentPageIndicatorTintColor = UIColor.blueColor()
        //设置分页点颜色
        page.pageIndicatorTintColor = UIColor.purpleColor()
        //添加方法
        page.addTarget(self, action: Selector("change:"), forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(page)
        
        
    }

    
    func change(page:UIPageControl){
        print(page.currentPage)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

