//
//  Leaf.swift
//  CombinationPattern
//
//  Created by wanglei on 2019/4/8.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色三:叶子节点
class Leaf: ComponentProtocol {
    
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
        
    }
    
    func removeComponent(component: ComponentProtocol) {

    }
    
    func clear() {
        
    }
}
