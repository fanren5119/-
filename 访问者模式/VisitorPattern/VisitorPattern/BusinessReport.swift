//
//  BusinessReport.swift
//  VisitorPattern
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

class BusinessReport {
    
    var elements = [ElementProtocol]()
    
    init() {
        self.elements.append(ManagerElement(name: "张三"))
        self.elements.append(ManagerElement(name: "李四"))
        self.elements.append(EngineerElement(name: "王五"))
        self.elements.append(EngineerElement(name: "周六"))
    }
    
    func showReport(visitor: VisitorProtocol) {
        for item in self.elements {
            item.accept(visitor: visitor)
        }
    }
    
}
