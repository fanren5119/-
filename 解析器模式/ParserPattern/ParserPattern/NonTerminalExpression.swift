//
//  NonTerminalExpression.swift
//  ParserPattern
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色三: 非终结符表达式
// 这里表示算数表达式中的,加法
class NonTerminalExpression: ExpressionProtocol {
    var leftExpression: ExpressionProtocol
    var rightExpression: ExpressionProtocol
    
    init(left: ExpressionProtocol, right: ExpressionProtocol) {
        self.leftExpression = left
        self.rightExpression = right
    }
    
    func calculate() -> Float {
        return self.leftExpression.calculate() + self.rightExpression.calculate()
    }
}
