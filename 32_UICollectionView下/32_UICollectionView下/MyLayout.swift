//
//  MyLayout.swift
//  32_UICollectionView下
//
//  Created by apple on 16/1/9.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

class MyLayout: UICollectionViewFlowLayout {
    var itemCount:Int?
    var attributeArray:Array<UICollectionViewLayoutAttributes>?
    override func prepareLayout() {
        super.prepareLayout()
        attributeArray = Array()
        let Width = (UIScreen.mainScreen().bounds.size.width - self.minimumInteritemSpacing)/2
        var l = 0;
        var r = 0;
        for var i = 0 ; i < itemCount! ; i++ {
            let indexPath = NSIndexPath(forItem: i, inSection: 0)
            let attri = UICollectionViewLayoutAttributes(forCellWithIndexPath: indexPath)
            let height = random()%140+50
            //用变量记录这个item放在了哪一类下面
            var tmp = 0
            var H = 0;
            if l<=r {
                //将item放在左边一列
                H = l + (Int)(self.minimumLineSpacing)
                l = l + height + (Int)(self.minimumLineSpacing)
                tmp = 0
                
            }else {
                //将item放在右边一列
                H = r + (Int)(self.minimumLineSpacing)
                r = r + height + (Int)(self.minimumLineSpacing)
                tmp = 1
               
            }
            attri.frame = CGRectMake((CGFloat)(tmp) * (Width + self.minimumInteritemSpacing), (CGFloat)(H), Width, (CGFloat)(height))
            attributeArray?.append(attri)
        }
        if l<=r{
            self.itemSize = CGSizeMake(Width,(CGFloat)(r * 2 / itemCount!) - self.minimumLineSpacing)
        }else{
            self.itemSize = CGSizeMake(Width,(CGFloat)(l * 2 / itemCount!) - self.minimumLineSpacing)
        }
        
    }
    
    override func layoutAttributesForElementsInRect(rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        return attributeArray
    }
    
    
    
    
    
    
    
}
