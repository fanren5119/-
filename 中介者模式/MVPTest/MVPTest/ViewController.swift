//
//  ViewController.swift
//  MVPTest
//
//  Created by wanglei on 2019/4/15.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ViewProtocol {

    var loginPresenter: LoginPresenter!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        self.loginPresenter = LoginPresenter()
        self.loginPresenter.attach(view: self)
        self.loginPresenter.login(phone: "lisi", psw: "123456")
    }

    func handleResult(result: Any?) {
        print("登录结果: \(result)")
    }
    
    deinit {
        self.loginPresenter.deattach()
    }
}

