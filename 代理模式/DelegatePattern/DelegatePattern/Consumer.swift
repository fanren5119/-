//
//  Consumer.swift
//  DelegatePattern
//
//  Created by wanglei on 2019/4/16.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色三: 目标对象
class Consumer: PersonProtocol {
    
    func buyIphone() {
        print("我终于买到iphonex了")
    }
}
