//
//  ComponentProtocol.swift
//  CombinationPattern
//
//  Created by wanglei on 2019/4/8.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色一:根节点
protocol ComponentProtocol {
    
    var name: String { get }
    var componentArray: [ComponentProtocol] { get }

    func doSomething()
    
    func addComponent(component: ComponentProtocol)
    
    func removeComponent(component: ComponentProtocol)
    
    func clear()
}
