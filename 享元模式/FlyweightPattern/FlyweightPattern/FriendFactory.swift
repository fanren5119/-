//
//  FriendFactory.swift
//  FlyweightPattern
//
//  Created by wanglei on 2019/4/8.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色三: 享元工厂(简单工厂模式)
class FriendFactory {
    
    static var friendDict = [String: FriendProtocol]()
    
    class func friendInfo(friendId: String) -> FriendProtocol {
        
        var friendInfo = self.friendDict[friendId]
        if friendInfo == nil {
            // 这里这一步,可以是从数据库中获取
            friendInfo = FriendInfo(friendId: friendId, name: "李四", sex: "男")
            self.friendDict[friendId] = friendInfo
        }
        
        return friendInfo!
    }
    
}
