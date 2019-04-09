//
//  ViewController.swift
//  BankMementoPattern
//
//  Created by wanglei on 2019/4/9.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let bank = Bank()
        
        bank.addBankEntity(entity: BankEntity(id: 0, name: "aaa", money: 1000))
        bank.addBankEntity(entity: BankEntity(id: 0, name: "bbb", money: 4000))
        bank.addBankEntity(entity: BankEntity(id: 0, name: "ccc", money: 5000))
        let memento = bank.createMemento()
        
        bank.addBankEntity(entity: BankEntity(id: 0, name: "ccc", money: 2000))
        bank.addBankEntity(entity: BankEntity(id: 0, name: "ccc", money: 4000))
        bank.printMoney()
        
        bank.apply(memento: memento) // 备忘录恢复,直接恢复到上次存储点
        bank.printMoney()
    }


}

