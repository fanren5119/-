//
//  ArrayOrderIteragor.swift
//  OrderIterator
//
//  Created by wanglei on 2019/4/3.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

class ArrayOrderIteragor : OrderIterator<Array<OrderModel>> {
    
    override init(obj: Array<OrderModel>) {
        super.init(obj: obj)
    }
    
    override func next() -> OrderModel? {
        if self.hasNext() {
            let result = self.obj?[self.index]
            self.index += 1
            return result
        }
        return nil
    }
    override func hasNext() -> Bool {
        return (self.obj?.count ?? 0) > self.index
    }
}
