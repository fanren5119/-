//
//  GroupLeader.swift
//  Reimburse
//
//  Created by wanglei on 2019/4/10.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色二: 具体角色 (组长)
class GroupLeader: Leader {
    
    override func getMaxMoneny() -> Float {
        return 1000
    }
    
    override func handle(bill: ReimbursementBill) {
        print("组长报销内容: \(bill.money) 报销金额: \(bill.money)")
    }
}
