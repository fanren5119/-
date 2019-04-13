//
//  MiddleCoffee.swift
//  BridgingPattern
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色四: 实现部分具体功能
class MiddleCoffee: Coffee {
    var ingredients: CoffeeIngredients
    
    init(ingredients: CoffeeIngredients) {
        self.ingredients = ingredients
    }
    
    func createCoffee() {
        print("\(self.ingredients.ingredients)的中杯咖啡")
    }
}
