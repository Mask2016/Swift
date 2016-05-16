//
//  ViewController.swift
//  23_UITableView
//
//  Created by apple on 15/12/22.
//  Copyright © 2015年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    //数据源数组
    var dataArray:Array<String>?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //创建tableView 风格可以是普通和分组两种
        let tableView:UITableView = UITableView(frame: self.view.frame, style: UITableViewStyle.Grouped)
        tableView.dataSource=self
        tableView.delegate=self
        dataArray = ["1","2","3","4","5","6","7","8","9","10"]
        tableView.reloadData()
        //设置tableView的回弹效果
        tableView.bounces = false
        //设置tableView的状态
        tableView.editing = true
        self.view.addSubview(tableView)
    }
    
    //设置具体的编辑状态
    func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle.Insert
    }
    //具体的逻辑操作
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete
        {
            dataArray?.removeAtIndex(indexPath.row)
        }
        else
        {
            dataArray?.append("new")
        }
        
        tableView.reloadData()
    }
    
    //设置tableView的移动
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        let str = dataArray?[sourceIndexPath.row]
        dataArray?.removeAtIndex(sourceIndexPath.row)
        dataArray?.insert(str!, atIndex: destinationIndexPath.row)
        
    }
    //设置分区数
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (dataArray?.count)!
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell?  = tableView.dequeueReusableCellWithIdentifier("cellId")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cellid")
            cell?.selectionStyle = UITableViewCellSelectionStyle.None
        }
        cell?.textLabel?.text = dataArray?[indexPath.row]
        return cell!
    }
    //设置头视图的高度
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    //设置尾视图的高度
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 100
    }
    //设置cell的高度 默认为44
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
    //设置头视图
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view :UIView = UIView(frame: CGRectMake(0,0,320,100))
        view.backgroundColor = UIColor.redColor()
        return view
    }
    //设置尾视图
    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view :UIView = UIView(frame: CGRectMake(0,0,320,100))
        view.backgroundColor = UIColor.blueColor()
        return view
    }
    //点击cell触发的方法
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("%d,%d",indexPath.section,indexPath.row)
    }
    //取消选中某个cell时触发的方法
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    //将要选中某个cell时触发的方法
    func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        return indexPath
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

