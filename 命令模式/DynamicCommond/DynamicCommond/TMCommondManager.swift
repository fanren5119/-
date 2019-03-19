//
//  TMCommondManager.swift
//  DynamicCommond
//
//  Created by wanglei on 2019/3/17.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色四:请求者(命令管理器)
class TMCommondManager {
    
    var commandsArray = [TMCommondProtocol]()
    var tm: TetrisMachine
    
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
    
    //添加动态命令到数组中,保存动态命令
    
    func addCommand(method: @escaping (TetrisMachine) -> (() -> Void)) {
        let command = TMDynamicCommond(tm: self.tm) { (tm) -> (Void) in
            method(tm)()
        }
        self.commandsArray.append(command)
    }
    
    func undo() {
        self.commandsArray.removeLast().excute()
    }
}
