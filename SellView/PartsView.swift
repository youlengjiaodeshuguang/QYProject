//
//  PartsView.swift
//  QYProject
//
//  Created by 河南升腾财富管理咨询有限公司 on 16/2/19.
//  Copyright © 2016年 杨勇秦怀涛. All rights reserved.
//

import UIKit

enum ScoreType{
    case Common  //普通分数面板
    case Best    //最高分面板
}

protocol ScoreViewProtocol{
    
    func changeScore(value s:Int)
}

class PartsView: UIView {
    let kScreenwidth = kScreenWidthSize
    
    
    var label:UILabel!
    
    let defaultFrame = CGRectMake(0,0,100,30)
    var stype:String!  //显示”最高分“还是”分数“
    var score:Int = 0{
        didSet{
            //分数变化，标签内容也要变化
            label.text = "\(stype):\(score)"
        }
    }
    
    //传入分数面板的类型，用于控制标签的显示
    init(stype:ScoreType)
    {
        label = UILabel(frame:defaultFrame)
        label.textAlignment = NSTextAlignment.Center
        
        super.init(frame:defaultFrame)
        
        self.stype = (stype == ScoreType.Common ? "分数":"最高分")
        
        backgroundColor = UIColor.orangeColor()
        label.font = UIFont(name:"微软雅黑", size:16)
        label.textColor = UIColor.whiteColor()
        self.addSubview(label)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //实现协议中的方法
    func changeScore(value s:Int)
    {
        score = s
    }
    
//    override init(frame: CGRect) {
//        
//        super.init(frame: frame)
//        self.backgroundColor = UIColor.whiteColor()
//    
//    }
//    
//    func showView(){
//        let arr = ["12","34","56","78","91","22"]
//        for var index = 0;index<arr.count;++index{
//            let button = UIButton(frame: CGRectMake(10 + (kScreenWidthSize-20)/4 * (CGFloat)(index%4),(kScreenWidthSize-20)/4 * (CGFloat)(index/4),(kScreenWidthSize-20)/4,(kScreenWidthSize-20)/4))
//            button.setTitle(arr[index], forState: .Normal)
//            button.addTarget(self, action: "actionButton", forControlEvents: UIControlEvents.TouchUpInside)
//            self.addSubview(button)
//        }
//    }
//    

//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
