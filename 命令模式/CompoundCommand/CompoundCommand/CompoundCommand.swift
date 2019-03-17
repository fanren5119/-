//
//  CompoundCommand.swift
//  CompoundCommand
//
//  Created by wanglei on 2019/3/17.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色三:复合命令
class CompoundCommand: TMCommondProtocol {
    let array : [TMCommondProtocol]
    init(array: [TMCommondProtocol]) {
        self.array = array
    }
    
    func execute() {
        for command in self.array {
            command.execute()
        }
    }
}
