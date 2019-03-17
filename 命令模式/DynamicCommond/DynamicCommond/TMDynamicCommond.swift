//
//  TMDynamicCommond.swift
//  DynamicCommond
//
//  Created by wanglei on 2019/3/17.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

typealias CommandBlock = (TetrisMachine) -> (Void)

//角色三:具体命令(动态命令)
//动态命令解决了命令太多导致的类太多的问题
class TMDynamicCommond: TMCommondProtocol {
    
    let tm: TetrisMachine
    let commandBlock: CommandBlock
    
    init(tm: TetrisMachine, block: @escaping CommandBlock) {
        self.tm = tm
        self.commandBlock = block
    }
    
    func excute() {
        self.commandBlock(self.tm)
    }
}
