//
//  StudentClothes.swift
//  DecoratorPattern
//
//  Created by wanglei on 2019/4/16.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色四: 具体的装饰者

class StudentClothes: PersonClothes {
    
    override init(person: Person) {
        super.init(person: person)
        self.clothes = "校服"
    }
    
    override func printClothes() {
        print("我叫\(self.name), 我是一个\(self.profession), 我今天穿了\(self.clothes ?? "")")
    }
    
}
