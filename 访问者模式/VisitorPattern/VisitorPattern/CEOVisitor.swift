//
//  CEOVisitor.swift
//  VisitorPattern
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色二: 具体的访问者
class CEOVisitor: VisitorProtocol {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func visit(element: EngineerElement) {
        print("员工:\(element.name), kpi:\(element.kpi)")
    }
    
    func visit(element: ManagerElement) {
        print("项目经理:\(element.name), kpi:\(element.kpi)")
    }

    
}
