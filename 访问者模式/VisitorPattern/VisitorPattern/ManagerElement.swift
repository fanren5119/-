//
//  ManagerElement.swift
//  VisitorPattern
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色四: 具体的元素
class ManagerElement: ElementProtocol {
    
    var name: String
    
    var productCount: Int
    
    var kpi: Int
    
    init(name: String) {
        self.productCount = Int(arc4random() % 50)
        self.name = name
        kpi = 1000000
    }
    
    func accept(visitor: VisitorProtocol) {
        visitor.visit(element: self)
    }
}
