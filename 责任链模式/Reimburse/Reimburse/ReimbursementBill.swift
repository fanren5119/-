//
//  ReimbursementBill.swift
//  Reimburse
//
//  Created by wanglei on 2019/4/10.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色三: 抽象的请求角色
class ReimbursementBill {
    
    var name: String
    var money: Float
    
    init(name: String, money: Float) {
        self.name = name
        self.money = money
    }
}
