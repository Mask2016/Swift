//
//  ViewController.swift
//  27_UIPickerView
//
//  Created by apple on 16/1/1.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    var dataArray:Array<String>?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let pickerView:UIPickerView = UIPickerView(frame: CGRectMake(100,100,200,200))
        //设置数据源与代理
        pickerView.delegate=self
        pickerView.dataSource=self
        dataArray = ["one","two","three","four","five"]
        self.view.addSubview(pickerView)
    }
    //设置分区数
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    //设置每个分区的行数
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }
    //设置每一行的内容
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataArray?[row]
    }
    //设置每个分区的宽度
    func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 100
    }
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 40
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

