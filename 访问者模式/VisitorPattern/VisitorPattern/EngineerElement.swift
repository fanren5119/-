//
//  EngineerElement.swift
//  VisitorPattern
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation
//角色四: 具体的元素

class EngineerElement: ElementProtocol {
    
    var name: String
    
    var codeLines: Int
    
    var kpi: Int
    
    init(name: String) {
        self.codeLines = Int(arc4random() % 10000000)
        self.name = name
        kpi = 100000
    }
    
    func accept(visitor: VisitorProtocol) {
        visitor.visit(element: self)
    }
}
