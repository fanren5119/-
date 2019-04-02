//
//  ViewController.swift
//  TemplatePattern
//
//  Created by wanglei on 2019/4/2.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let path = Bundle.main.path(forResource: "test", ofType: ".mp4")
        let url = URL(fileURLWithPath: path!)
        
        let player = ConcretePlayer()
        player.play(url: url, context: self, rect: self.view.bounds)
    }


}

