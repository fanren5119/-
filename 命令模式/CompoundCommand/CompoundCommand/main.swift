//
//  main.swift
//  CompoundCommand
//
//  Created by wanglei on 2019/3/17.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

print("Hello, World!")

let tm = TetrisMachine()
let manager = TMCommondManager(tm: tm)

manager.toLeft()
manager.toRight()
manager.toTransform()

manager.undo()

