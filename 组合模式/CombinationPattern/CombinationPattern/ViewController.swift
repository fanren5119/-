//
//  ViewController.swift
//  CombinationPattern
//
//  Created by wanglei on 2019/4/8.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let grandpa = Componsite(name: "爷爷")
        
        let parent = Componsite(name: "爸爸")
        let uncle = Componsite(name: "叔叔")
        
        grandpa.addComponent(component: parent)
        grandpa.addComponent(component: uncle)
        
        grandpa.doSomething()
        parent.doSomething()
    }


}

