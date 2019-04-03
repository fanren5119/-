//
//  ViewController.swift
//  ObserverPattern
//
//  Created by wanglei on 2019/4/3.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Observer {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let observer = ConcreteObserver()
        
        let people = PeopleObservable()
        people.registerObserver(observer: observer)
        people.registerObserver(observer: self)
        people.name = "lixi"
    }

    func update(observable: PeopleObservable, msg: Any?) {
        print("\(msg)")
    }
}

