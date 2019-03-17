//
//  DynamicCommand.swift
//  GenericCommand
//
//  Created by wanglei on 2019/3/17.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色二:具体命令(动态命令)
//这里T表示泛型,表示接受者的类型
class GenericCommand<T>: CommandProtocol {
    
    let tm: T
    let commandBlock: (T) -> (Void)
    
    init(tm: T, commandBlock: @escaping (T) -> (Void)) {
        self.tm = tm
        self.commandBlock = commandBlock
    }
    
    func execute() {
        self.commandBlock(self.tm)
    }
}
