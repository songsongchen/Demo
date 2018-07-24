//
//  ViewController.swift
//  Demo
//
//  Created by chenjs on 2018/7/12.
//  Copyright © 2018年 chenjs. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.title = "kjkkk"
        let btn = UIButton.init(type: .custom)
        btn.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        btn.backgroundColor = UIColor.gray
        btn.addTarget(self, action: #selector(add), for: .touchUpInside)
        self.view.addSubview(btn)
    }
    @objc func add(){
        self.navigationController?.pushViewController(HomeViewController(), animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

