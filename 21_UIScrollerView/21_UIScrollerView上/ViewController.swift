//
//  ViewController.swift
//  21_UIScrollerView上
//
//  Created by apple on 15/12/17.
//  Copyright © 2015年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let scrollView:UIScrollView = UIScrollView(frame: self.view.frame)
        self.view.addSubview(scrollView)
        let view:UIView = UIView(frame: CGRectMake(100,100,100,100))
        view.backgroundColor = UIColor.redColor()
        scrollView.addSubview(view)
        //设置scrollerView的内容尺寸
        scrollView.contentSize = CGSizeMake(self.view.frame.size.width*2, self.view.frame.size.height*2)
        //设置回弹效果
        scrollView.bounces=false
        //设置指示条的位置
        scrollView.scrollIndicatorInsets = UIEdgeInsetsMake(10, 10, 10, 10)
        //设置指示条是否显示
        scrollView.showsHorizontalScrollIndicator=false
        //设置是否翻页效果
        scrollView.pagingEnabled=true
        //设置拉伸和缩放的比值
        scrollView.minimumZoomScale = 0.5
        scrollView.maximumZoomScale = 2
        
        //设置代理
        scrollView.delegate=self
    }

    //返回进行缩放的视图
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return scrollView.subviews.first
    }
    //scrollView减速结束时触发的代理方法
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        
    }
    //scrollView停止拖拽的时候触发的代理方法
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        
    }
    //scrollView停止动画的时候触发的方法
    func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView) {
        
    }
    //scrollView停止缩放效果时触发的方法
    func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat) {
        
    }
    //scrollView开始滑动时触发的方法
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
    }
    //scrollView滑动到顶部时触发的方法
    func scrollViewDidScrollToTop(scrollView: UIScrollView) {
        
    }
    //scrollView进行缩放效果时触发的方法
    func scrollViewDidZoom(scrollView: UIScrollView) {
        
    }
    //将要滑动到顶部时触发的代理 返回false则不能进行回到顶部操作
    func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool {
        return false
    }
    //scrollView将要减速时触发的方法
    func scrollViewWillBeginDecelerating(scrollView: UIScrollView) {
        
    }
    //scrollView开始拖拽时触发的方法
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        
    }
    //scrollView将要进行缩放时触发的方法
    func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?) {
        
    }
    //scrollView将要停止拖拽时触发的方法
    func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

