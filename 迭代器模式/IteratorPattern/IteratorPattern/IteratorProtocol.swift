//
//  IteratorProtocol.swift
//  IteratorPattern
//
//  Created by wanglei on 2019/4/3.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色一: 迭代器接口
protocol IteratorProtocol {
    
    associatedtype T
    
    func next() -> T?

    func hasNext() -> Bool
}
