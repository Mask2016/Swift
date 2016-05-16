//
//  ViewController.swift
//  14_UISlider的实操
//
//  Created by apple on 15/12/2.
//  Copyright © 2015年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let imageView:UIImageView = UIImageView(frame: CGRectMake(0, 0, 320, 400))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let slider:UISlider = UISlider(frame: CGRectMake(20,self.view.frame.size.height-60,280,20));
        self.view.addSubview(slider);
        slider.addTarget(self, action: #selector(ViewController.slider(_:)), forControlEvents: UIControlEvents.ValueChanged)
        slider.maximumValue = 100
        slider.minimumValue = 0
        imageView.image = UIImage(named: "屏幕快照 2015-12-02 下午9.28.43.png")
        self.view.addSubview(imageView)
    }
    
    
    
    func slider(slider:UISlider){
        let value:Float = 1-slider.value/100
        imageView.bounds = CGRectMake(0, 0,320*(CGFloat)(value), 400*(CGFloat)(value))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

