//
//  ViewController.swift
//  IteratorPattern
//
//  Created by wanglei on 2019/4/3.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let aggregrate = ConcreteAggregrate<People>()
        aggregrate.addObject(obj: People(name: "wang", id: "1"))
        aggregrate.addObject(obj: People(name: "li", id: "2"))
        aggregrate.addObject(obj: People(name: "zhao", id: "3"))
        
        let iterate = aggregrate.iterator()
        while iterate.hasNext() {
            let people = iterate.next()
            print("\(people?.name) == \(people?.id)")
        }
    }


}

