//
//  NSProxy.swift
//  DelegatePattern
//
//  Created by wanglei on 2019/4/16.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色一: 代理对象
// 持有目标对象的引用
class PersonProxy: PersonProtocol {
    
    var consume: PersonProtocol
    
    init(consume: PersonProtocol) {
        self.consume = consume
    }
    
    func buyIphone() {
        self.consume.buyIphone()
    }
}
