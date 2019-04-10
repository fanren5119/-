//
//  OffState.swift
//  StatePattern
//
//  Created by wanglei on 2019/4/10.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色二:具体的状态
class OffState: StateProtocol {
    func channelUp() {
        print("关机状态,不能切换频道")
    }
    
    func channelDown() {
        print("关机状态,不能切换频道")
    }
    
    func volumeUp() {
        print("关机状态,不能调整音量")
    }
    
    func volumeDown() {
        print("关机状态,不能调整音量")
    }
}
