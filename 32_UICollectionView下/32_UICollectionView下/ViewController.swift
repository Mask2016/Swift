//
//  ViewController.swift
//  32_UICollectionView下
//
//  Created by apple on 16/1/9.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let myLayout = MyLayout()
        myLayout.itemCount = 100
        let collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: myLayout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.registerClass(NSClassFromString("UICollectionViewCell"), forCellWithReuseIdentifier: "cellId")
        self.view.addSubview(collectionView)
    }

    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cellId", forIndexPath: indexPath)
        cell.backgroundColor = UIColor(red: (CGFloat)(random()%255)/255.0, green: (CGFloat)(random()%255)/255.0, blue: (CGFloat)(random()/255)/255.0, alpha: 1)
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

