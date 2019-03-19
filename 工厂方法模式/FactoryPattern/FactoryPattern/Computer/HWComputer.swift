//
//  HWComputer.swift
//  FactoryPattern
//
//  Created by wanglei on 2019/3/19.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色二: 具体产品
class HWComputer : ComputerProtocol {
    func host() {
        print("HWHost")
    }
    
    func keyboard() {
        print("HWKeyboard")
    }
    
    func screen() {
        print("HWKeyboard")
    }
}
