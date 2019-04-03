//
//  ViewController.swift
//  OrderIterator
//
//  Created by wanglei on 2019/4/3.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let agreegrate = OrderArrayAgreegrate()
        
        let iterator = agreegrate.iterator()
        
        while iterator.hasNext() {
            let order = iterator.next()
            print("\(order?.id) === \(order?.name)")
        }
    }


}

