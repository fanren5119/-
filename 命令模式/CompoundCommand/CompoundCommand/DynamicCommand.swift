//
//  DynamicCommand.swift
//  CompoundCommand
//
//  Created by wanglei on 2019/3/17.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

typealias CommandBlock = (TetrisMachine) -> (Void)

//角色三:动态命令
class DynamicCommand: TMCommondProtocol {
    let tm: TetrisMachine
    let commandBlock: CommandBlock
    
    init(tm: TetrisMachine, commandBlock: @escaping CommandBlock) {
        self.tm = tm
        self.commandBlock = commandBlock
    }
    
    func execute() {
        self.commandBlock(self.tm)
    }
}
