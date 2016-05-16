//
//  ViewController.swift
//  11_UITextFiled
//
//  Created by apple on 15/11/25.
//  Copyright © 2015年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    let textField:UITextField = UITextField(frame: CGRectMake(20,100,280,40))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //创建textfiled
        //设置输入框风格为line
        textField.borderStyle = UITextBorderStyle.Line
        //设置输入框风格为 bezel
        textField.borderStyle = UITextBorderStyle.Bezel
        //设置输入框的提示文字
        textField.placeholder = "请输入文字"
        //设置输入的文字颜色
        textField.textColor = UIColor.redColor()
        //设置文字的字体
        textField.font = UIFont.italicSystemFontOfSize(20)
        //设置文字的对齐方式
        textField.textAlignment = NSTextAlignment.Center
        //是否每次进入编辑状态时都清空输入框中的文字
        textField.clearsOnBeginEditing = true
        //是否字体大小自适应
        textField.adjustsFontSizeToFitWidth = true
        //设置输入框为无效
        //textField.enabled=false
        //设置输入框的左视图
        let viewLeft:UIView = UIView(frame: CGRectMake(0,0,40,40))
        let viewRight:UIView = UIView(frame: CGRectMake(0,0,40,40))
        viewLeft.backgroundColor = UIColor.blueColor()
        viewRight.backgroundColor = UIColor.greenColor()
        textField.leftView = viewLeft
       // textField.rightView = viewRight
        //设置左右视图的显示模式
        textField.leftViewMode = UITextFieldViewMode.Always
        //textField.rightViewMode = UITextFieldViewMode.Always
        //设置弹出的交互键盘
        let board:UIView = UIView(frame: CGRectMake(0,0,320,50))
        board.backgroundColor = UIColor.orangeColor()
        //textField.inputView = board
        //设置附键盘视图
        textField.inputAccessoryView = board
       // textField.backgroundColor = UIColor.redColor()
        //设置代理
        textField.delegate = self
        //设置文本框删除按钮的显示模式
        textField.clearButtonMode = UITextFieldViewMode.Always
        self.view.addSubview(textField)
    }

    //当输入改变时调用的方法
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        print(string)
        return true
    }
    //textField已经进入编辑状态时调用的方法
    func textFieldDidBeginEditing(textField: UITextField) {
        print("didBegin")
    }
    //结束编辑状态时调用的方法
    func textFieldDidEndEditing(textField: UITextField) {
        print("didEnd")
    }
    //将要进入编辑状态时调用的方法
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        print("shouldBegin")
        return true
    }
    //将要结束编辑状态时调用的方法
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        print("shouldEnd")
        return true
    }
    //当点击删除按钮时触发的方法
    func textFieldShouldClear(textField: UITextField) -> Bool {
        return false
    }
    //点击return键触发的方法
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       textField.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

