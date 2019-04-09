//
//  Memento.swift
//  BankMementoPattern
//
//  Created by wanglei on 2019/4/9.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色二:备忘录角色
class Memento {
    
    var jsonString: String?
    
    init(bank: Bank) {
        let dict = bank.serilizer()
        if let data = try? JSONSerialization.data(withJSONObject: dict, options: []) {
            self.jsonString = String(data: data, encoding: String.Encoding.utf8)
        }
    }
    
    
    func apply(bank: Bank) {
        if let data = self.jsonString?.data(using: String.Encoding.utf8) {
            if let dict = try? JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments) {
                let b = Bank.deserilizer(dict: dict as? [String: Any] ?? [:])
                bank.total = b.total
                bank.entityDict = b.entityDict
            }
        }
    }
}
