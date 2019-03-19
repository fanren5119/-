//
//  LXComputer.swift
//  FactoryPattern
//
//  Created by wanglei on 2019/3/19.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色二: 具体产品
class LXComputer : ComputerProtocol {
    func host() {
        print("LXHost")
    }
    
    func keyboard() {
        print("LXKeyboard")
    }
    
    func screen() {
        print("LXScreen")
    }
}
