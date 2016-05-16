//
//  ViewController.swift
//  29_UIWebView
//
//  Created by apple on 16/1/3.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let webView:UIWebView = UIWebView(frame: CGRectMake(0,0,320,400))
        webView.loadRequest(NSURLRequest(URL: NSURL(string: "http://www.baidu.com")!))
        self.view.addSubview(webView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

