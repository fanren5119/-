//
//  ViewController.swift
//  ChainPattern
//
//  Created by wanglei on 2019/4/10.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let one = OneHandler()
        let two = TwoHandler()
        
        one.nextHandler = two  //组成一条责任链,one 后面是 two
        
        one.handleRequest(request: "TwoHandler")
    }


}

