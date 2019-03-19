//
//  main.swift
//  FactoryPattern
//
//  Created by wanglei on 2019/3/19.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

print("Hello, World!")

let factory = HWFacatory()
let computer = factory.getComputer()
computer.host()
computer.screen()

