//
//  TetrisMachine.swift
//  ClosureCommand
//
//  Created by wanglei on 2019/3/17.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色一:接受者
class TetrisMachine: NSObject {
    @objc func toLeft() {
        print("toLeft");
    }
    
    @objc func toRight() {
        print("toRight");
    }
    
    @objc func toTransform() {
        print("toTransform");
    }
    
}
