//
//  SellViewController.swift
//  QYProject
//
//  Created by 河南升腾财富管理咨询有限公司 on 16/2/18.
//  Copyright © 2016年 杨勇秦怀涛. All rights reserved.
//

import UIKit

class SellViewController: BaseViewController {
    
    let scrollView = UIScrollView()
    var score:SellMenuView!
    var bestscore:PartsView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createNavgationView("出售")
        createScrollView()
        
    }
    
    func createScrollView(){
        scrollView.frame = CGRectMake(0, 64, kScreenWidthSize, kScreenHeightSize-64)
        scrollView.backgroundColor = UIColor.redColor()
        self.view.addSubview(scrollView)
        setupScoreLabels()
        
    }
    
    

    func setupScoreLabels()
    {
        score = SellMenuView(stype: MenuType.Common,target: self)
        //score.frame.origin = CGPointMake(50, 80)
        //score.changeScore(value: 0)
        scrollView.addSubview(score)
        
//        bestscore = PartsView(stype: ScoreType.Best)
//        bestscore.frame.origin.x = 170
//        bestscore.frame.origin.y = 80
//        bestscore.changeScore(value: 99)
//        self.view.addSubview(bestscore)
    }
    
    func actionButton(){
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
