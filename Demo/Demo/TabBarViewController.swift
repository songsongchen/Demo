//
//  TabBarViewController.swift
//  Demo
//
//  Created by chenjs on 2018/7/13.
//  Copyright © 2018年 chenjs. All rights reserved.
//

import UIKit

class TabBarViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupChildViewController()

        //        self.setValue(MainTabBar(), forKey: "tabBar")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    private func  setupChildViewController() {
        //vc 设置title会覆盖此处的title
        tabBaraAddChildViewController(vc: ViewController(), title: "一", image: "tab_one", selectedImage: "tab_one")
        tabBaraAddChildViewController(vc: HomeViewController(), title: "二", image: "tab_one", selectedImage: "tab_one")
        tabBaraAddChildViewController(vc: ViewController(), title: "三", image: "tab_one", selectedImage: "tab_one")
        tabBaraAddChildViewController(vc: HomeViewController(), title: "四", image: "tab_one", selectedImage: "tab_one")
    }
    func tabBaraAddChildViewController(vc: UIViewController, title: String, image: String, selectedImage: String) {
        
        vc.tabBarItem = UITabBarItem(title: title, image: UIImage(named: image), selectedImage: UIImage(named: selectedImage))
        vc.view.backgroundColor = UIColor.purple
        let nav = RootNavigationViewController(rootViewController: vc)
//        addChildViewController(nav)
        tabBarController?.viewControllers?.append(nav)
    }

}

class MainTabBar: UITabBar {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.isTranslucent = false
        self.backgroundImage = UIImage(named: "tabbar")
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}

