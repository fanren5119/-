//
//  CommandManager.swift
//  GenericCommand
//
//  Created by wanglei on 2019/3/17.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色三:请求者(命令管理器)
class CommandManager {
    let tm: TetrisMachine
    var commandArray = [CommandProtocol]()
    init(tm: TetrisMachine) {
        self.tm = tm
    }
    
    
    func toLeft() {
        self.tm.toLeft()
        self.addCommand(method: TetrisMachine.toLeft)
    }
    
    func toRight() {
        self.tm.toRight()
        self.addCommand(method: TetrisMachine.toRight)
    }
    
    func toTransform() {
        self.tm.toTransform()
        self.addCommand(method: TetrisMachine.toTransform)
    }
    
    func addCommand(method: @escaping (TetrisMachine) -> () -> Void) {
        
        //在这里创建command的时候,设置了泛型的类型是TetrisMachine
        let command = GenericCommand<TetrisMachine>(tm: self.tm) { (tm) -> (Void) in
            method(tm)()
        }
        self.commandArray.append(command)
    }
    
    func undo() {
        self.commandArray.removeLast().execute()
    }
}
