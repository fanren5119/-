//
//  OrderService.swift
//  OrderDelegate
//
//  Created by wanglei on 2019/4/16.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

class OrderService {
    
    static func getOrderList() -> [OrderProtocol] {
        let order1 = Order(id: "1", name: "lisi")
        let order2 = Order(id: "2", name: "zhangsan")
        let order3 = Order(id: "3", name: "liusi")
        
        var array = [OrderProtocol]()
        let proxy1 = OrderProxy(order: order1)
        array.append(proxy1)
        
        let proxy2 = OrderProxy(order: order2)
        array.append(proxy2)
        
        let proxy3 = OrderProxy(order: order3)
        array.append(proxy3)
        
        return array
    }
    
    static func getOrderPrice(id: String) -> String {
        return "100"
    }
}
