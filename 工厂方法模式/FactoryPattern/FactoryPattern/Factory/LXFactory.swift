//
//  LXFactory.swift
//  FactoryPattern
//
//  Created by wanglei on 2019/3/19.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色四: 具体工厂
class LXFactory : FactoryProtocol {
    func getComputer() -> ComputerProtocol {
        return LXComputer()
    }
}
