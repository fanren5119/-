//
//  StateProtocol.swift
//  StatePattern
//
//  Created by wanglei on 2019/4/10.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色一: 抽象的状态
protocol StateProtocol {
    
    func channelUp()
    
    func channelDown()
    
    func volumeUp()
    
    func volumeDown()
    
}
