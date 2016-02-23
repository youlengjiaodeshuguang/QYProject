//
//  SellMenuView.swift
//  QYProject
//
//  Created by 河南升腾财富管理咨询有限公司 on 16/2/19.
//  Copyright © 2016年 杨勇秦怀涛. All rights reserved.
//

import UIKit

enum MenuType{
    case Common  //普通分数面板
    case List    //最高分面板
}

class SellMenuView: UIView {
     let defaultFrame = CGRectMake(0,0,kScreenWidthSize,200)
    var stype:String!
    
    init(stype:MenuType,target:UIViewController){
       
        super.init(frame:defaultFrame)
        
        self.stype = (stype == MenuType.Common ? "九宫格":"列表")
        self.backgroundColor = UIColor.whiteColor()
        if self.stype == "九宫格"{
            let arr = ["蔬菜","水果","家具","建筑材料","包装","广告设计"]
            for var index = 0;index<arr.count;++index{
                let button = UIButton(frame: CGRectMake(10 + (kScreenWidthSize-20)/4 * (CGFloat)(index%4),(kScreenWidthSize-20)/4 * (CGFloat)(index/4),(kScreenWidthSize-20)/4,(kScreenWidthSize-20)/4))
                button.setTitle(arr[index], forState: .Normal)
                button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
                button.addTarget(target, action: "actionButton", forControlEvents: UIControlEvents.TouchUpInside)
                self.addSubview(button)
            }
        }else{
            let arr = ["蔬菜","水果","家具","建筑材料"]
            for var index = 0;index<arr.count;++index{
                let button = UIButton(frame: CGRectMake(((kScreenWidthSize)/4 + 1) * (CGFloat)(index%4),0,(kScreenWidthSize-3)/4,(kScreenWidthSize)/4))
                button.titleLabel?.font = UIFont.systemFontOfSize(12)
                button.setTitle(arr[index], forState: .Normal)
                button.backgroundColor = UIColor.redColor()
                button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
                button.addTarget(target, action: "actionButton", forControlEvents: UIControlEvents.TouchUpInside)
                self.addSubview(button)
            }
            
        }
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}