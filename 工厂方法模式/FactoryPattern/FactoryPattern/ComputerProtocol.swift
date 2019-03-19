//
//  ComputerProtocol.swift
//  FactoryPattern
//
//  Created by wanglei on 2019/3/19.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色一: 抽象产品
protocol ComputerProtocol {
    func host()
    
    func keyboard()
    
    func screen()
}
