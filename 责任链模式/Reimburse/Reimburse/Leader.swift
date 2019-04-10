//
//  Leader.swift
//  Reimburse
//
//  Created by wanglei on 2019/4/10.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色一: 抽象的处理对象
class Leader {
    
    var nextLeader: Leader?
    
    func handleBill(bill: ReimbursementBill) {
        if self.getMaxMoneny() > bill.money {
            self.handle(bill: bill)
        } else {
            self.nextLeader?.handleBill(bill: bill)
        }
    }
    
    func getMaxMoneny() -> Float {
        return 0
    }
    
    func handle(bill: ReimbursementBill) {
        
    }
}
