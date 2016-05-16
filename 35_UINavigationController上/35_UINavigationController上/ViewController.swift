//
//  ViewController.swift
//  35_UINavigationController上
//
//  Created by apple on 16/1/17.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.purpleColor()
        self.title = "标题"
        // Do any additional setup after loading the view, typically from a nib.
        let label:UILabel = UILabel(frame: CGRectMake(100,100,100,30))
        label.backgroundColor = UIColor.redColor()
        label.text = "Hello World"
        self.view.addSubview(label);
        //导航上按钮item的颜色
        self.navigationController!.navigationBar.tintColor = UIColor.greenColor()
        self.navigationController?.navigationBar.barTintColor = UIColor.orangeColor()
        let button:UIButton = UIButton(frame:
            CGRectMake(100,200,100,30))
        button.backgroundColor = UIColor.redColor()
        button.setTitle("切换", forState: UIControlState.Normal)
        button.addTarget(self, action: "changeController", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
        
        let barButtonItem:UIBarButtonItem = UIBarButtonItem(title: "返回", style: UIBarButtonItemStyle.Plain, target: self, action: "back")
//        self.navigationItem.backBarButtonItem  = barButtonItem
        self.navigationItem.leftBarButtonItem = barButtonItem
        let barR1 = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Bookmarks, target: self, action: "action1")
        let barR2 = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Camera, target: self, action: "action2")
        //self.navigationItem.rightBarButtonItems = [barR1,barR2]
        
        self.navigationController?.toolbarHidden=false
        self.toolbarItems = [barR1,barR2]
    }

    func changeController(){
        let viewController:UIViewController = UIViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    func action1(){
        print("action1")
    }
    func action2(){
        print("action2")
    }
    func back(){
        print("back")
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

