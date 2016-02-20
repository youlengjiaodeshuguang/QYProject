//
//  HomeViewController.swift
//  QYProject
//
//  Created by 河南升腾财富管理咨询有限公司 on 16/2/18.
//  Copyright © 2016年 杨勇秦怀涛. All rights reserved.
//

import UIKit

class HomeViewController: UITabBarController {

    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        createViewcontrollers()
    }

    func createViewcontrollers(){
        let tabbarController = UITabBarController()
        let sell = SellViewController()
        let sellView = UINavigationController(rootViewController: sell)
        sellView.tabBarItem.title = "出售"
        tabbarController.addChildViewController(sellView)
        
        let buy = BuyViewController()
        let buyView = UINavigationController(rootViewController: buy)
        buyView.tabBarItem.title = "购买"
        tabbarController.addChildViewController(buyView)
        
        let collect = CollectViewController()
        let collectView = UINavigationController(rootViewController: collect)
        collectView.tabBarItem.title = "收藏"
        tabbarController.addChildViewController(collectView)
        
        let mine = MineViewController()
        let mineView = UINavigationController(rootViewController: mine)
        mineView.tabBarItem.title = "我的"
        tabbarController.addChildViewController(mineView)
        tabbarController.navigationController?.navigationBar.hidden = true
        self.viewControllers = [sellView,buyView,collectView,mineView];
        
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
