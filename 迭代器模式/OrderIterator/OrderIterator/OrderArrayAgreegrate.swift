//
//  OrderArrayAgreegrate.swift
//  OrderIterator
//
//  Created by wanglei on 2019/4/3.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

class OrderArrayAgreegrate: NSObject & OrderAgreegrate {
    
    var array = Array<OrderModel>()
    
    override init() {
        super.init()
        
        self.array.append(OrderModel(name: "Mac", id: "1"))
        self.array.append(OrderModel(name: "Iphone", id: "2"))
    }
    
    
    func iterator() -> OrderIterator<Array<OrderModel>> {
        return ArrayOrderIteragor(obj: self.array)
    }
}
