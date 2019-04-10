//
//  OnState.swift
//  StatePattern
//
//  Created by wanglei on 2019/4/10.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色二:具体的状态
class OnState: StateProtocol {
    
    func channelUp() {
        print("向上切换频道")
    }
    
    func channelDown() {
        print("向下切换频道")
    }
    
    func volumeUp() {
        print("音量调高")
    }
    
    func volumeDown() {
        print("音量调低")
    }
}
