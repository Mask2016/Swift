//
//  ViewController.swift
//  6_UISerchBar
//
//  Created by apple on 15/11/14.
//  Copyright © 2015年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UISearchBarDelegate {
    let searchBar:UISearchBar = UISearchBar(frame: CGRectMake(20,100,280,50))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //创建一个搜索框
        
        //设置搜索框上的默认提示语
        searchBar.placeholder = "请输入关键字"
        //设置搜索框上显示的默认文字
        //searchBar.text = "剑圣"
        //设置搜索款风格
        searchBar.barStyle = UIBarStyle.Default
        //设置搜索框背景文字
        searchBar.prompt = "背景"
        //设置相应功能按钮的显示与否
        searchBar.showsBookmarkButton=true
        //searchBar.showsSearchResultsButton = true
        //设置渲染颜色
        searchBar.tintColor = UIColor.redColor()
        //设置搜索栏的颜色
        searchBar.barTintColor = UIColor.blueColor()
        //设置搜索框的附件视图
        searchBar.scopeButtonTitles = ["1","2","3","4"]
        //设置展示附件视图
        searchBar.showsScopeBar = true
        //设置代理
        searchBar.delegate = self
        
        self.view.addSubview(searchBar)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        searchBar.resignFirstResponder()
        
    }
    
    //代理回调函数
    //点击附件视图代理方法的回调
    func searchBar(searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        print(selectedScope)
    }
    //当输入框文字变化时调用的方法
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
       // print(searchText)
    }
    //点击图书按钮触发的方法
    func searchBarBookmarkButtonClicked(searchBar: UISearchBar) {
        print("点击了图书")
    }
    //点击搜索结果按钮触发的方法
    func searchBarResultsListButtonClicked(searchBar: UISearchBar) {
        
    }
    //将要进入编辑状态触发的方法
    func searchBarShouldBeginEditing(searchBar: UISearchBar) -> Bool {
        return true
    }
    //将要结束编辑时触发的方法
    func searchBarShouldEndEditing(searchBar: UISearchBar) -> Bool {
        return true
    }
    //检测用户的输入文字
    func searchBar(searchBar: UISearchBar, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        print(text)
        return true
    }
    //点击取消按钮时触发的方法
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        
    }
    //点击搜索按钮触发的方法
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        
    }
    //已经进入编辑状态时调用的方法
    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
        
    }
    //将要结束编辑时触发的方法
    func searchBarTextDidEndEditing(searchBar: UISearchBar) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

