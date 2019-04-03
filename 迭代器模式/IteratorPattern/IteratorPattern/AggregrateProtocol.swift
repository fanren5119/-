//
//  AggregrateProtocol.swift
//  IteratorPattern
//
//  Created by wanglei on 2019/4/3.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色三:容器接口
protocol AggregrateProtocol {
    
    associatedtype T
    
    func addObject(obj: T)
    
    func removeObject(obj: T)
    
    func count() -> Int
    
    func iterator() -> ConcreteIterator<T>
}
