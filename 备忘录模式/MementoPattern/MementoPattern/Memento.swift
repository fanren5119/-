//
//  Memento.swift
//  MementoPattern
//
//  Created by wanglei on 2019/4/9.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//备忘录角色
class Memento {
    
    var level = 0
    var integral = 100
    
    init(level: Int, integral: Int) {
        self.level = level
        self.integral = integral
    }
}
