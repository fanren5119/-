//
//  TerminatorExpression.swift
//  ParserPattern
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色二: 终结符表达式
// 这里表示算数表达式中的数字
class TerminatorExpression: ExpressionProtocol {
    
    var number: String
    
    init(number: String) {
        self.number = number
    }
    
    func calculate() -> Float {
        return Float(self.number) ?? 0.0
    }
}
