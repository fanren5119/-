//
//  OrderProxy.swift
//  OrderDelegate
//
//  Created by wanglei on 2019/4/16.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色一: 代理对象
// 实现目标接口, 持有目标对象的引用
class OrderProxy: OrderProtocol {
    
    var order: Order
    
    init(order: Order) {
        self.order = order
    }
    
    var id: String {
        set {
            self.order.id = newValue
        }
        get {
            return self.order.id
        }
    }
    var name: String {
        set {
            self.order.name = newValue
        }
        get {
            return self.order.name
        }
    }
    var price: String? {
        set {
            self.order.price = newValue
        }
        get {
            if self.order.price == nil {
                self.order.price = self.loadPrice(id: self.id)
            }
            return self.order.price
        }
    }
    
    func loadPrice(id: String) -> String {
        return OrderService.getOrderPrice(id: id)
    }
}
