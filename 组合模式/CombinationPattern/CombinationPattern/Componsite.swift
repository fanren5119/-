//
//  Componsite.swift
//  CombinationPattern
//
//  Created by wanglei on 2019/4/8.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色二:具体子节点
class Componsite: ComponentProtocol {
    
    var name: String
    var componentArray: [ComponentProtocol]
    
    init(name: String) {
        self.name = name
        self.componentArray = [ComponentProtocol]()
    }
    
    func doSomething() {
        print("节点:\(self.name)")
    }
    
    func addComponent(component: ComponentProtocol) {
        self.componentArray.append(component)
    }
    
    func removeComponent(component: ComponentProtocol) {
        for i in 0..<self.componentArray.count {
            if self.componentArray[i].name == component.name {
                self.componentArray.remove(at: i)
                break
            }
        }
    }
    
    func clear() {
        self.componentArray.removeAll()
    }
}
