//
//  FriendProtocol.swift
//  FlyweightPattern
//
//  Created by wanglei on 2019/4/8.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色一:享元接口
protocol FriendProtocol {
    
    var friendId: String { get }
    
    func showInfo()
}
