//
//  ViewController.swift
//  20_UIAlerController之ActionSheet
//
//  Created by apple on 15/12/14.
//  Copyright © 2015年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIActionSheetDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //使用旧的方法创建actionSheet
//        let sheet:UIActionSheet = UIActionSheet(title: "actionSheet", delegate: self, cancelButtonTitle: "cancel", destructiveButtonTitle: "delete", otherButtonTitles: "one", "two")
//        sheet.showInView(self.view)
    }

    
//    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
//        print(buttonIndex)
//    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let actionSheet:UIAlertController = UIAlertController(title: "actionSheet", message: "look me", preferredStyle: UIAlertControllerStyle.ActionSheet)
        let actionAction:UIAlertAction = UIAlertAction(title: "one", style: UIAlertActionStyle.Default) { (action) -> Void in
            print("helle world")
        }
        let actionActionOther:UIAlertAction = UIAlertAction(title: "cancel", style: UIAlertActionStyle.Cancel) { (action) -> Void in
            print("cancel")
        }
        actionSheet.addAction(actionAction)
        actionSheet.addAction(actionActionOther)
        
        self.presentViewController(actionSheet, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

