//
//  VisitorProtocol.swift
//  VisitorPattern
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色一: 抽象的访问者
protocol VisitorProtocol {
    
    var name: String { get set}
    
    func visit(element: EngineerElement)
    
    func visit(element: ManagerElement)
}
