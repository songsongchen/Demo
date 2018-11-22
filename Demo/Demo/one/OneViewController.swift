//
//  OneViewController.swift
//  Demo
//
//  Created by chenjs on 2018/9/18.
//  Copyright © 2018年 chenjs. All rights reserved.
//

import UIKit
import DNSPageView

let YYScreenWidth = UIScreen.main.bounds.size.width
let YYScreenHeigth = UIScreen.main.bounds.size.height
let DominantColor = UIColor.init(red: 242/255.0, green: 77/255.0, blue: 51/255.0, alpha: 1)
let FooterViewColor = UIColor.init(red: 240/255.0, green: 241/255.0, blue: 244/255.0, alpha: 1)

// iphone X
let isIphoneX = YYScreenHeigth == 812 ? true : false
// navigationBarHeight
let navigationBarHeight : CGFloat = isIphoneX ? 88 : 64
// tabBarHeight
let tabBarHeight : CGFloat = isIphoneX ? 49 + 34 : 49

class OneViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.orange
        // 创建DNSPageStyle，设置样式
        let style = DNSPageStyle()
        style.isTitleScrollEnable = false
        style.isScaleEnable = true
        style.isShowBottomLine = true
        style.titleSelectedColor = UIColor.black
        style.titleColor = UIColor.gray
        style.bottomLineColor = DominantColor
        style.bottomLineHeight = 2
        
        
        let titles = ["推荐","分类","VIP","直播"]
        let viewControllers:[UIViewController] = [TwoViewController(),HomeViewController(),ViewController(),OneViewController()]
        for vc in viewControllers{
            self.addChildViewController(vc)
        }
        let pageView = DNSPageView(frame: CGRect(x: 0, y: navigationBarHeight, width: YYScreenWidth, height: YYScreenHeigth-navigationBarHeight-44), style: style, titles: titles, childViewControllers: viewControllers)
        view.addSubview(pageView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
