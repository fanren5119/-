//
//  ViewController.swift
//  VisitorPattern
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let business = BusinessReport()
        let cto = CTOVisitor(name: "Mary")
        let ceo = CEOVisitor(name: "Bob")
        business.showReport(visitor: cto)
    }


}

