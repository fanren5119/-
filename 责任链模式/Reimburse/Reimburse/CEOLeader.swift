//
//  CEOLeader.swift
//  Reimburse
//
//  Created by wanglei on 2019/4/10.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

class CEOLeader: Leader {
    override func getMaxMoneny() -> Float {
        return 10000
    }
    
    override func handle(bill: ReimbursementBill) {
        print("老板报销内容: \(bill.money) 报销金额: \(bill.money)")
    }
}
