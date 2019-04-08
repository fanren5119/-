//
//  ViewController.swift
//  FlyweightPattern
//
//  Created by wanglei on 2019/4/8.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let friendInfo = FriendFactory.friendInfo(friendId: "1")
        friendInfo.showInfo()
        
        friendInfo.showInfo()
    }


}

