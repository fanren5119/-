//
//  Context.swift
//  StatePattern
//
//  Created by wanglei on 2019/4/10.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色三:状态上下文
class Context {
    
    var state: StateProtocol
    
    init() {
        self.state = OffState()
    }
    
    func channelUp() {
        self.state.channelUp()
    }
    
    func channelDown() {
        self.state.channelDown()
    }
    
    func volumeUp() {
        self.state.volumeUp()
    }
    
    func volumeDown() {
        self.state.volumeDown()
    }
}
