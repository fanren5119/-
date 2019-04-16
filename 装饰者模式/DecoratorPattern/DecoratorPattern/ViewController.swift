//
//  ViewController.swift
//  DecoratorPattern
//
//  Created by wanglei on 2019/4/16.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let student = Student(name: "李四")
        let clothes = StudentClothes(person: student)
        clothes.printClothes()
    }


}

