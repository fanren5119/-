//
//  OneRequest.swift
//  UpgradeChainPattern
//
//  Created by wanglei on 2019/4/10.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色四: 具体的请求角色
class OneRequest: Request {
    
    override func getLevel() -> Int {
        return 1
    }
    
}
