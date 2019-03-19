//
//  main.swift
//  AdaptePattern
//
//  Created by wanglei on 2019/3/19.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

print("Hello, World!")

//let adapter = Adapter()
//adapter.URAMoney = 100
//let rmb = adapter.getRMB()
//print("rmb + \(rmb)")

let adaptee = ObjectAdaptee()
adaptee.URAMoney = 100
let adapter = ObjectAdapter(adaptee: adaptee)
let rmb = adapter.getRMB()
print("rmb = \(rmb)")
