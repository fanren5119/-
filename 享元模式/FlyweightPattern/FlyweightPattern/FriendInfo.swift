//
//  FriendInfo.swift
//  FlyweightPattern
//
//  Created by wanglei on 2019/4/8.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色二:具体享元对象
class FriendInfo: FriendProtocol {
    
    var friendId: String
    var name: String
    var sex: String
    
    init(friendId: String, name: String, sex: String) {
        self.friendId = friendId
        self.name = name
        self.sex = sex
    }
    
    func showInfo() {
        print("名字:\(self.name), 性别:\(self.sex)")
    }
}
