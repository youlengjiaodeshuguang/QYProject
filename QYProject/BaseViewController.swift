//
//  BaseViewController.swift
//  QYProject
//
//  Created by 河南升腾财富管理咨询有限公司 on 16/2/18.
//  Copyright © 2016年 杨勇秦怀涛. All rights reserved.
//

import UIKit

let kScreenWidthSize = UIScreen.mainScreen().bounds.size.width
let kScreenHeightSize = UIScreen.mainScreen().bounds.size.height
//var navTitle:String = ""
class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = true
        //createNavgationView()
        // Do any additional setup after loading the view.
    }
//MARK: - 自定义导航栏
    func createNavgationView(title:String){
        let bgView = UIView()
        bgView.frame = CGRectMake(0, 0, kScreenWidthSize, 64)
        bgView.backgroundColor = UIColor.blueColor()
        self.view.addSubview(bgView)
        
        let titleLabel = UILabel()
        titleLabel.frame = CGRectMake((kScreenWidthSize - 80)/2,20, 80, 40)
        titleLabel.text = title
        titleLabel.textColor = UIColor.whiteColor()
        titleLabel.textAlignment = NSTextAlignment.Center
        titleLabel.backgroundColor = UIColor.clearColor()
        bgView.addSubview(titleLabel)
        
    }
    
    func createNavgationViewWithBackButton(title title:String){
        let bgView = UIView()
        bgView.frame = CGRectMake(0, 0, kScreenWidthSize, 64)
        bgView.backgroundColor = UIColor.blueColor()
        self.view.addSubview(bgView)
        
        let titleLabel = UILabel()
        titleLabel.frame = CGRectMake((kScreenWidthSize - 80)/2,20, 80, 40)
        titleLabel.text = title
        titleLabel.textColor = UIColor.whiteColor()
        titleLabel.textAlignment = NSTextAlignment.Center
        titleLabel.backgroundColor = UIColor.clearColor()
        bgView.addSubview(titleLabel)
        
        let button = UIButton()
        button.frame = CGRectMake(10, 20, 40, 40)
        button.setTitle("返回", forState: UIControlState.Normal)
        button.addTarget(self, action: "backAction", forControlEvents: UIControlEvents.TouchUpInside)
        bgView.addSubview(button)
    }
    
    func backAction(){
        self.navigationController?.popViewControllerAnimated(true)
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
