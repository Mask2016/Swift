//
//  ViewController.swift
//  26_UITextView
//
//  Created by apple on 16/1/1.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let textVew:UITextView = UITextView(frame: CGRectMake(20, 100, 280, 100))
        textVew.backgroundColor = UIColor.grayColor()
        //设置字体
        textVew.font = UIFont.systemFontOfSize(25)
        //设置文字颜色
        textVew.textColor = UIColor.redColor()
        //设置对齐模式
        textVew.textAlignment = NSTextAlignment.Center
        //设置是否可编辑
        textVew.editable=false
        //设置内容
        textVew.text = "你好，我是textView\n 网址:www.baidu.com"
        //设置链接话类型
        textVew.dataDetectorTypes = UIDataDetectorTypes.Link
        //设置代理
        textVew.delegate=self
        self.view.addSubview(textVew)
    }
    //输入字符时调用的方法
    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        return true
    }
    //开始编辑时调用的方法
    func textViewDidBeginEditing(textView: UITextView) {
        
    }
    //输入改变时调用的方法
    func textViewDidChange(textView: UITextView) {
        
    }
    //改变选中文字时调用的方法
    func textViewDidChangeSelection(textView: UITextView) {
        
    }
    //结束编辑时调用的方法
    func textViewDidEndEditing(textView: UITextView) {
        
    }
    //将要开始编辑时调用的方法
    func textViewShouldBeginEditing(textView: UITextView) -> Bool {
        return true
    }
    //将要结束编辑时调用的方法
    func textViewShouldEndEditing(textView: UITextView) -> Bool {
        return true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

