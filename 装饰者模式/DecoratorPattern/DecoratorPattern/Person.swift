//
//  Person.swift
//  DecoratorPattern
//
//  Created by wanglei on 2019/4/16.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色一: 抽象组件
protocol Person {
    
    var name: String { set get }
    var profession: String { set get }
}
