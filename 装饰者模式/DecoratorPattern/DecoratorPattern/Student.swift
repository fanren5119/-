//
//  Student.swift
//  DecoratorPattern
//
//  Created by wanglei on 2019/4/16.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色二: 具体组件
class Student: Person {
    
    var name: String
    var profession: String
    
    init(name: String) {
        self.name = name
        self.profession = "学生"
    }
}
