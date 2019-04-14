//
//  ViewController.swift
//  FacadePattern
//
//  Created by wanglei on 2019/4/14.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let phone = Phone()
        
        phone.playMusic()
        phone.takePhoto()
        phone.takePhoto()
        
    }


}

