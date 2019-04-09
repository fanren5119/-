//
//  BankEntity.swift
//  BankMementoPattern
//
//  Created by wanglei on 2019/4/9.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

class BankEntity {
    
    var id: Int
    var name: String
    var money: Float
    
    init(id: Int, name: String, money: Float) {
        self.id = id
        self.name = name
        self.money = money
    }

    
    func serilizer() -> [String: Any] {
        var dict = [String: Any]()
        dict["id"] = self.id
        dict["name"] = self.name
        dict["mondy"] = self.money
        return dict
    }
    
    static func deserilizer(dict: [String: Any]) -> BankEntity {
        let id = dict["id"] as? Int ?? 0
        let name = dict["name"] as? String ?? ""
        let money = dict["money"] as? Float ?? 0.0
        return BankEntity(id: id, name: name, money: money)
    }
}
