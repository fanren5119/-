//
//  TMTransfomCommond.swift
//  CommondPattern
//
//  Created by wanglei on 2019/3/16.
//  Copyright © 2019年 wanglei. All rights reserved.
//

import Foundation

//角色三：具体接口
class TMTransfomCommond: TMCommondProtocol {
    let tm: TetrisMachine
    init(tm: TetrisMachine) {
        self.tm = tm
    }
    func excute() {
        self.tm.toTransform()
    }
}
