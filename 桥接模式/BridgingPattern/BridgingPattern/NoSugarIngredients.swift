//
//  NoSugarIngredients.swift
//  BridgingPattern
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色二: 具体抽象部分(优化的抽象部分)
class NoSugarIngredients: CoffeeIngredients {
    
    var ingredients: String
    
    init() {
        self.ingredients = "不加糖"
    }
    
}
