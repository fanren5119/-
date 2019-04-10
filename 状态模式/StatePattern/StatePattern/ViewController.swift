//
//  ViewController.swift
//  StatePattern
//
//  Created by wanglei on 2019/4/10.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let context = Context()
        context.channelUp()
        
        
        context.state = OnState()  //切换状态
        context.channelUp()
        
    }
    
    


}

