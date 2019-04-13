//
//  ViewController.swift
//  ParserPattern
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let context = Context()
        let result = context.calculate(expression: "10 + 20 + 30")
        print("result = \(result)")
    }


}

