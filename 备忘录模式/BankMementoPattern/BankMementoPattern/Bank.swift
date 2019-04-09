//
//  Bank.swift
//  BankMementoPattern
//
//  Created by wanglei on 2019/4/9.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色一:负责创建备忘录
class Bank {
    
    var total: Float = 0.0
    var entityDict = [Int: BankEntity]()
    
    func addBankEntity(entity: BankEntity) {
        self.total += entity.money
        
        self.entityDict[entity.id] = entity
    }
    
    func createMemento() -> Memento {
        return Memento(bank: self)
    }
    
    func apply(memento: Memento) {
        memento.apply(bank: self)
    }
    
    func serilizer() -> [String: Any] {
        var dict = [String: Any]()
        dict["total"] = self.total
        
        var dict2 = [String: Any]()
        for (key, value) in self.entityDict {
            
            dict2["\(key)"] = value.serilizer()
        }
        dict["entityDict"] = dict2
        return dict
    }
    
    static func deserilizer(dict: [String: Any]) -> Bank {
        let bank = Bank()
        bank.total = dict["total"] as? Float ?? 0
        
        var entityDict = [Int: BankEntity]()
       
        let jsonDict = dict["entityDict"] as? [String: Any] ?? [:]
        for (key, value) in jsonDict {
            if let k = Int(key) {
                entityDict[k] = BankEntity.deserilizer(dict: value as? [String: Any] ?? [:])
            }
        }
        bank.entityDict = entityDict
        return bank
    }
    
    func printMoney() {
        print("money = \(self.total)")
    }
}
