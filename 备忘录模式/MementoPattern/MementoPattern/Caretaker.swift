//
//  Caretaker.swift
//  MementoPattern
//
//  Created by wanglei on 2019/4/9.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色三:管理者,负责存储备忘录

class Caretaker {
    
    var mementoArray = [Memento]()
    
    func addMemento(memento: Memento) {
        self.mementoArray.append(memento)
    }
    
}
