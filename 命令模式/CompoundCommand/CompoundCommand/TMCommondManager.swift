//
//  TMCommondManager.swift
//  CompoundCommand
//
//  Created by wanglei on 2019/3/17.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色四:请求者(命令管理器)
class TMCommondManager {
    
    let tm: TetrisMachine
    var commandArray = [TMCommondProtocol]()
    
    init(tm:TetrisMachine) {
        self.tm = tm
    }
    
    func toLeft() {
        self.tm.toLeft()
        self.addCommands(method: TetrisMachine.toLeft)
    }
    
    func toRight() {
        self.tm.toRight()
        self.addCommands(method: TetrisMachine.toRight)
    }
    
    func toTransform() {
        self.tm.toTransform()
        self.addCommands(method: TetrisMachine.toTransform)
    }
    
    func addCommands(method: @escaping (TetrisMachine) -> () -> Void) {
        let command = DynamicCommand(tm: self.tm) { (tm) -> (Void) in
            method(tm)()
        }
        self.commandArray.append(command)
    }
    
    func undo() {
        
        //复合命令,把多个命令组合在一起,就是复合命令
        let command = CompoundCommand(array: self.commandArray.reversed())
        command.execute()
        self.commandArray.removeAll()
    }
}
