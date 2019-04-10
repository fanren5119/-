//
//  ViewController.swift
//  UpgradeChainPattern
//
//  Created by wanglei on 2019/4/10.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let oneHandler = OneHandler()
        let twoHandler = TwoHandler()
        oneHandler.nextHander = twoHandler
        
        let request = TwoRequest()
        oneHandler.handlerRequest(request: request)
    }


}

