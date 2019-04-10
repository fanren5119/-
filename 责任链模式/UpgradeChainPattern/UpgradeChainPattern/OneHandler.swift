//
//  OneHandler.swift
//  UpgradeChainPattern
//
//  Created by wanglei on 2019/4/10.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色二: 具体的处理角色
class OneHandler: Handler {
    
    override func getLevel() -> Int {
        return 1
    }
    
    override func handle(request: Request) {
        print("OneHandler 在处理中")
    }
    
}
