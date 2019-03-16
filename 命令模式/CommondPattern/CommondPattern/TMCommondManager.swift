//
//  TMCommondManager.swift
//  CommondPattern
//
//  Created by wanglei on 2019/3/16.
//  Copyright © 2019年 wanglei. All rights reserved.
//

import Foundation

//角色四：请求者
//请求者持有命令的引用
class TMCommondManager {
    let tm: TetrisMachine
    let left: TMLeftCommond
    let right: TMRightCommond
    let transform: TMTransfomCommond
    var array = [TMCommondProtocol]()
    
    init(tm: TetrisMachine, left: TMLeftCommond, right: TMRightCommond, transform: TMTransfomCommond) {
        self.tm = tm
        self.left = left
        self.right = right
        self.transform = transform
    }
    
    func toLeft() {
        self.left.excute()
        self.array.append(TMLeftCommond(tm: self.tm))
    }
    func toRight() {
        self.right.excute()
        self.array.append(TMRightCommond(tm: self.tm))
    }
    func toTransform() {
        self.transform.excute()
        self.array.append(TMTransfomCommond(tm: self.tm))
    }
    
    func undo() {
        self.array.removeLast().excute()
    }
}
