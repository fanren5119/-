//
//  TetrisMachine.swift
//  CompoundCommand
//
//  Created by wanglei on 2019/3/17.
//  Copyright © 2019 wanglei. All rights reserved.
//

//角色一:接受者
import Foundation

class TetrisMachine: NSObject {
    
    @objc func toLeft() {
        print("toLeft")
    }
    
    @objc func toRight() {
        print("toRight")
    }
    
    @objc func toTransform() {
        print("toTransform")
    }

}
