//
//  ViewController.swift
//  Reimburse
//
//  Created by wanglei on 2019/4/10.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let group = GroupLeader()
        let charge = ChargeLeader()
        let ceo = CEOLeader()
        
        group.nextLeader = charge
        charge.nextLeader = ceo
        
        let bill = ReimbursementBill(name: "Mac 电脑", money: 6780)
        group.handleBill(bill: bill)
    }


}

