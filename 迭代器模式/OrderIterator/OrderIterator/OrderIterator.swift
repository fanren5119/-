//
//  OrderIterator.swift
//  OrderIterator
//
//  Created by wanglei on 2019/4/3.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

class OrderIterator<T>: Iterator {
    
    var obj: T? //集合类型,Array, Set, 或者字典
    var index = 0
    
    init(obj: T) {
        self.obj = obj
    }
    
    func next() -> OrderModel? {
        return nil
    }
    
    func hasNext() -> Bool {
        return true
    }
}
