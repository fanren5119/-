//
//  ExpressionProtocol.swift
//  ParserPattern
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色一: 抽象表达式
protocol ExpressionProtocol {
    
    func calculate() -> Float
}
