//
//  ViewController.swift
//  OrderDelegate
//
//  Created by wanglei on 2019/4/16.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let array = OrderService.getOrderList()
        
        for order in array {
            print("id: \(order.id), name:\(order.name)")
        }
        
        let price = array[0].price
        print("====\(price)")
        
    }


}

