//
//  Handler.swift
//  UpgradeChainPattern
//
//  Created by wanglei on 2019/4/10.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色一: 抽象的处理角色
class Handler {
    
    var nextHander: Handler?
    
    func handlerRequest(request: Request) {
        if self.getLevel() == request.getLevel() {
            self.handle(request: request)
        } else {
            self.nextHander?.handlerRequest(request: request)
        }
    }
    
    func getLevel() -> Int {
        return 0
    }
    
    func handle(request: Request) {
        
    }
}
