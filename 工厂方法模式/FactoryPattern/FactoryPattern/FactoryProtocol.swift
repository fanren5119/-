//
//  FactoryProtocol.swift
//  FactoryPattern
//
//  Created by wanglei on 2019/3/19.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色三: 抽象工厂
protocol FactoryProtocol {
    func getComputer() -> ComputerProtocol
}
