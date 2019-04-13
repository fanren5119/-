//
//  Coffee.swift
//  BridgingPattern
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色三: 抽象实现部分
protocol Coffee {
    
    var ingredients: CoffeeIngredients { get }
    
    func createCoffee()
    
}
