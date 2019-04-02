//
//  ViewController.swift
//  AlertControllerBuilder
//
//  Created by wanglei on 2019/4/2.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let button = UIButton(type: .custom)
        button.backgroundColor = UIColor.red
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        button.addTarget(self, action: #selector(respondsToButton), for: .touchUpInside)
        self.view.addSubview(button)
    }

    @objc func respondsToButton() {
        Builder(self).setTitle("提示")
            .setMessage("明天下雨")
            .setOk("确定")
            .setCancel("取消")
            .setOkAction({ (_) in
            print("确定")
            }).setCancelAction ({ (_) in
            print("取消")
            })
            .build().show()
    }
}

