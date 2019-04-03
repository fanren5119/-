//
//  SetOrderIterator.swift
//  OrderIterator
//
//  Created by wanglei on 2019/4/3.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

class SetOrderIterator : OrderIterator<Set<OrderModel>> {
    
    var iterator: Set<OrderModel>.Iterator?
    
    override init(obj: Set<OrderModel>) {
        super.init(obj: obj)
        self.iterator = self.obj?.makeIterator()
    }
    
    override func next() -> OrderModel? {
        if self.hasNext() {
            let result = self.iterator?.next()
            self.index += 1
            return result
        }
        return nil
    }
    override func hasNext() -> Bool {
        return (self.obj?.count ?? 0) > self.index
    }
}
