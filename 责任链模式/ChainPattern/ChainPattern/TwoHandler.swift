//
//  TwoHandler.swift
//  ChainPattern
//
//  Created by wanglei on 2019/4/10.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色二: 具体抽象对象
class TwoHandler: Handler {
    override func getLevel() -> String {
        return "TwoHandler"
    }
    
    override func handle(str: String) {
        print("TwoHandler 处理中 --\(str)")
    }
}
