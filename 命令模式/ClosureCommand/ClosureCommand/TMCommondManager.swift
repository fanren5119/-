//
//  TMCommondManager.swift
//  ClosureCommand
//
//  Created by wanglei on 2019/3/17.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色二:请求者(命令调用者)
//在闭包命令中,具体的命令是一个个的block闭包

typealias CommandBlock = (TetrisMachine) -> (Void)

class TMCommondManager {
    let tm: TetrisMachine
    var commandArray = [CommandBlock]()
    init(tm: TetrisMachine) {
        self.tm = tm
    }
    
    func toLeft() {
        self.tm.toLeft()
        self.addCommand(methodName: "toLeft")
    }
    
    func toRight() {
        self.tm.toRight()
        self.addCommand(methodName: "toRight")
    }
    
    func toTransform() {
        self.tm.toTransform()
        self.addCommand(methodName: "toTransform")
    }
    
    func addCommand(methodName: String) {
        self.commandArray.append() {
            $0.perform(Selector(methodName))
        }
    }
    
    func undo() {
        let block = self.commandArray.removeLast()
        block(self.tm)
    }
}
