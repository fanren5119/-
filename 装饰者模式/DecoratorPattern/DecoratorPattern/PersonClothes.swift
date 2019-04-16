//
//  PersonClothes.swift
//  DecoratorPattern
//
//  Created by wanglei on 2019/4/16.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色三: 抽象的装饰者
// 持有抽象组件的引用, 继承抽象组件
class PersonClothes: Person {
    
    var person: Person
    
    var name: String {
        set {
            self.person.name = newValue
        }
        get {
            return self.person.name
        }
    }
    var profession: String {
        set {
            self.person.profession = newValue
        }
        get {
            return self.person.profession
        }
    }
    
    var clothes: String?
    
    init(person: Person) {
        self.person = person
    }
    
    
    func printClothes() {
        
    }
}
