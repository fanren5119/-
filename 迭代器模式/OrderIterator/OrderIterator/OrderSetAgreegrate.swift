//
//  OrderSetAgreegrate.swift
//  OrderIterator
//
//  Created by wanglei on 2019/4/3.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

class OrderSetAgreegrate: NSObject & OrderAgreegrate {
    
    var set = Set<OrderModel>()
    
    override init() {
        super.init()
        self.set.insert(OrderModel(name: "Mac", id: "1"))
        self.set.insert(OrderModel(name: "Iphone", id: "2"))
    }
    
    func iterator() -> OrderIterator<Set<OrderModel>> {
        return SetOrderIterator(obj: self.set)
    }
}
