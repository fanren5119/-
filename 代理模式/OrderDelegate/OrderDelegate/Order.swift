//
//  Order.swift
//  OrderDelegate
//
//  Created by wanglei on 2019/4/16.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色三: 目标对象
class Order: OrderProtocol {
    
    var id: String
    var name: String
    var price: String?
    
    init(id: String, name: String) {
        self.id = id
        self.name = name
    }
}
