//
//  Originator.swift
//  MementoPattern
//
//  Created by wanglei on 2019/4/9.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色一:负责创建一个备忘录
class Originator {
    
    var level = 0
    var integral = 100
    
    
    func play() {
        self.level += 1
        self.integral += 50
    }
    
    func createMemento() -> Memento {
        return Memento(level: self.level, integral: self.integral)
    }
    
    func apply(memento: Memento) {
        self.level = memento.level
        self.integral = memento.integral
    }
    
    func printInfo() {
        print("等级:\(self.level), 积分:\(self.integral)")
    }
}
