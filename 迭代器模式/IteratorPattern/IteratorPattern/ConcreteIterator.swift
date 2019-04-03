//
//  ConcreteIterator.swift
//  IteratorPattern
//
//  Created by wanglei on 2019/4/3.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色二:具体的迭代器
class ConcreteIterator<T>: IteratorProtocol {
    
    var array : Array<T>?
    var index = 0
    
    init(array: Array<T>?) {
        self.array = array
    }
    
    func next() -> T? {
        if self.hasNext() {
            
            let result = self.array?[self.index]
            self.index += 1
            return result
        }
        return nil;
    }
    
    func hasNext() -> Bool {
        return (self.array?.count ?? 0) > index
    }
}
