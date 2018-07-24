//
//  HomeViewController.swift
//  Demo
//
//  Created by chenjs on 2018/7/13.
//  Copyright © 2018年 chenjs. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        if (self.navigationController?.viewControllers.count)! > 1 {
            let item = UIBarButtonItem.init(barButtonSystemItem: .cancel, target: self, action: #selector(self.back));
            self.navigationItem.setLeftBarButton(item, animated: true)
        }
      
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func back() {
        self.navigationController?.popViewController(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
