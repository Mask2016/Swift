//
//  ViewController.swift
//  19_UIAlertController之AlertView
//
//  Created by apple on 15/12/13.
//  Copyright © 2015年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIAlertViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //使用就的方法创建警告框
//        let alertView:UIAlertView = UIAlertView(title: "alert", message: "look me", delegate: self, cancelButtonTitle: "cancel", otherButtonTitles: "sure","other")
//        //设置alertView的风格
//        alertView.alertViewStyle = UIAlertViewStyle.LoginAndPasswordInput
//        alertView.show()
        
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //使用新的方法创建alertView
        let alertView:UIAlertController = UIAlertController(title: "alert", message: "look me", preferredStyle: UIAlertControllerStyle.Alert)
        //添加一个封装了操作逻辑的按钮
        let alertActionOne:UIAlertAction = UIAlertAction(title: "cancel", style: UIAlertActionStyle.Destructive) { (alert) -> Void in
            print("cancel")
        }
        alertView.addAction(alertActionOne)
        //添加一个输入框
        alertView.addTextFieldWithConfigurationHandler { (textField) -> Void in
            textField.placeholder = "hello world"
        }
        self.presentViewController(alertView, animated: true, completion: nil)
    }
    
//    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
//        print(buttonIndex)
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

