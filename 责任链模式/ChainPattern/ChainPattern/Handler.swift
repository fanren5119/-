//
//  Handler.swift
//  ChainPattern
//
//  Created by wanglei on 2019/4/10.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色一: 抽象处理对象
class Handler {
    
    var nextHandler: Handler?
    
    final func handleRequest(request: String) {
        
        if request == self.getLevel() {
            self.handle(str: request)
        } else {
            self.nextHandler?.handleRequest(request: request)
        }
        
    }
    
    func getLevel() -> String {
        return ""
    }
    
    func handle(str: String) {
        
    }
}
