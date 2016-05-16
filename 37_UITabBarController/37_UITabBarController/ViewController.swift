//
//  ViewController.swift
//  37_UITabBarController
//
//  Created by apple on 16/1/23.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
       let viewCon = UIViewController()
        viewCon.view.backgroundColor = UIColor.redColor()
        viewCon.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(viewCon, animated: true)
    }

}

