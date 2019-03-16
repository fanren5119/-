//
//  main.swift
//  CommondPattern
//
//  Created by wanglei on 2019/3/16.
//  Copyright © 2019年 wanglei. All rights reserved.
//

import Foundation

print("Hello, World!")

let tm = TetrisMachine()
let left = TMLeftCommond(tm: tm)
let right = TMRightCommond(tm: tm)
let transform = TMTransfomCommond(tm: tm)
let manager = TMCommondManager(tm: tm, left: left, right: right, transform: transform)
manager.toLeft()
manager.toRight()
manager.toTransform()

manager.undo()

