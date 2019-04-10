//
//  OneHandler.swift
//  ChainPattern
//
//  Created by wanglei on 2019/4/10.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色二:具体的处理对象
class OneHandler: Handler {
    override func getLevel() -> String {
        return "OneHandler"
    }
    
    override func handle(str: String) {
        print("OneHandler 处理中 --\(str)")
    }
}
