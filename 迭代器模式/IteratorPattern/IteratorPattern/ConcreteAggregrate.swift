//
//  ConcreteAggregrate.swift
//  IteratorPattern
//
//  Created by wanglei on 2019/4/3.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色四:具体的迭代器
class ConcreteAggregrate<T>: AggregrateProtocol {
    var array = [T]()
    
    func addObject(obj: T) {
        self.array.append(obj)
    }
    
    func removeObject(obj: T) {
        
    }
    
    func count() -> Int {
        return self.array.count
    }
    
    func iterator() -> ConcreteIterator<T> {
        return ConcreteIterator<T>(array: array)
    }
}
