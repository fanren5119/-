//
//  MacComputer.swift
//  FactoryPattern
//
//  Created by wanglei on 2019/3/19.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色二: 具体产品
class MacComputer : ComputerProtocol {
    func host() {
        print("MacHost")
    }
    
    func keyboard() {
        print("MacKeyboard")
    }
    
    func screen() {
        print("MacScreen")
    }
}
