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
        self.addCommond(methodName: "toLeft")
    }
    
    func toRight() {
        self.tm.toRight()
        self.addCommond(methodName: "toRight")
    }
    
    func toTransform() {
        self.tm.toTransform()
        self.addCommond(methodName: "toTransform")
    }
    
    //添加动态命令到数组中,保存动态命令
    func addCommond(methodName: String) {
        let command = TMDynamicCommond(tm: self.tm, block: { (tm: TetrisMachine) -> (Void) in
            tm.perform(Selector(methodName))
        })
        self.commandsArray.append(command)
    }
    
    func undo() {
        self.commandsArray.removeLast().excute()
    }
}
