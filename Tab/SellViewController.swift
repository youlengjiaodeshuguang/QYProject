//
//  SellViewController.swift
//  QYProject
//
//  Created by 河南升腾财富管理咨询有限公司 on 16/2/18.
//  Copyright © 2016年 杨勇秦怀涛. All rights reserved.
//

import UIKit

class SellViewController: BaseViewController,UITableViewDelegate,UITableViewDataSource{
    
    let scrollView = UIScrollView()
    var score:SellMenuView!
    var list:SellMenuView!
    var tableView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createNavgationView("出售")
        createScrollView()
        
    }
    
    func createScrollView(){
        scrollView.frame = CGRectMake(0, 64, kScreenWidthSize, kScreenHeightSize-64-49)
        scrollView.contentSize = CGSizeMake(kScreenWidthSize, 1000);
        scrollView.backgroundColor = UIColor.grayColor()
        scrollView.scrollEnabled = true
        self.view.addSubview(scrollView)
        setupScoreLabels()
        
    }
    
    

    func setupScoreLabels(){
        score = SellMenuView(stype: MenuType.Common,target: self)
        scrollView.addSubview(score)
        
        list  = SellMenuView(stype: MenuType.List,  target: self)
        list.frame = CGRectMake(0, 210, kScreenWidthSize,(kScreenWidthSize)/4)
        list.backgroundColor = UIColor.yellowColor()
        scrollView.addSubview(list)
        createTableView()
        
    }
    
    func createTableView(){
        tableView = UITableView(frame: CGRectMake(0, 210 + (kScreenWidthSize)/4 + 10, kScreenWidthSize, 1000 - 210-(kScreenWidthSize)/4))
        tableView.delegate = self
        tableView.dataSource = self
        scrollView.addSubview(tableView)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell()
        return cell
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20;
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "猜你喜欢"
    }
// MARK: - 可以用来自定义Header
//    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//
//        let footerView = UIView(frame: CGRectMake(0, 0, tableView.frame.size.width, 40))
//        footerView.backgroundColor = UIColor.cyanColor()
//        let label = UILabel(frame: CGRectMake(5,5,80,30))
//        label.text = "猜你喜欢"
//        footerView.addSubview(label)
//        
//        return footerView
//    }
    
    
    
    func actionButton(){
        
        
    }
    
    func listButtonAction(sender:UIButton){
        switch(sender.tag){
        case 201:
            print("");
        case 202:
            print("");
        case 203:
            print("");
        case 204:
            let university = UniversityViewController()
            self.navigationController?.pushViewController(university, animated: true)
        default:
            print("");
        }
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
