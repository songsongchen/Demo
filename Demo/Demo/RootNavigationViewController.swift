//
//  RootNavigationViewController.swift
//  Demo
//
//  Created by chenjs on 2018/7/13.
//  Copyright © 2018年 chenjs. All rights reserved.
//

import UIKit

class RootNavigationViewController: UINavigationController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.interactivePopGestureRecognizer!.delegate = nil;

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    lazy var backBtn: UIButton = {
        //设置返回按钮属性
        let backBtn = UIButton(type: UIButtonType.custom)
        backBtn.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        backBtn.setTitleColor(UIColor.black, for: UIControlState.normal)
        backBtn.setTitleColor(UIColor.gray, for: UIControlState.highlighted)
        backBtn.setImage(UIImage(named: "back_1"), for: UIControlState.normal)
        backBtn.setImage(UIImage(named: "back_2"), for: UIControlState.highlighted)
        backBtn.addTarget(self, action:Selector(("backBtnClick")), for:UIControlEvents.touchUpInside)
        backBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignment.left
        backBtn.contentEdgeInsets = UIEdgeInsetsMake(0, -25, 0, 0)
        backBtn.titleEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0)
        
        let btnW: CGFloat = UIScreen.main.bounds.width > 375.0 ? 50 : 44
        
        backBtn.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: btnW, height: 44))
        return backBtn
    }()
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if self.childViewControllers.count > 0 {
            let vc = self.childViewControllers[0]
            
            if self.childViewControllers.count == 1 {
                backBtn.setTitle(vc.tabBarItem.title!, for: UIControlState.normal)
            } else {
                backBtn.setTitle("返回", for: UIControlState.normal)
            }
            
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backBtn)
            
            viewController.hidesBottomBarWhenPushed = true
        }
        
        super.pushViewController(viewController, animated: animated)
    }
    
    func backBtnClick() {
        self.popViewController(animated: true)
    }


}
