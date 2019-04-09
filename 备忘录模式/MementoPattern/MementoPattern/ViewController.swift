//
//  ViewController.swift
//  MementoPattern
//
//  Created by wanglei on 2019/4/9.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let org = Originator()
        
        //开始游戏
        org.play()
        org.play()
        org.printInfo()
        
        let memento = org.createMemento()
        let care = Caretaker()
        care.addMemento(memento: memento) // 存储备忘录信息
        
        org.apply(memento: memento) // 恢复到上次记录
        org.printInfo()
    }


}

