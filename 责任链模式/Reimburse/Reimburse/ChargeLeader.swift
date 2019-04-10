//
//  ChargeLeader.swift
//  Reimburse
//
//  Created by wanglei on 2019/4/10.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

class ChargeLeader: Leader {
    override func getMaxMoneny() -> Float {
        return 5000
    }
    
    override func handle(bill: ReimbursementBill) {
        print("主管报销内容: \(bill.money) 报销金额: \(bill.money)")
    }
}
