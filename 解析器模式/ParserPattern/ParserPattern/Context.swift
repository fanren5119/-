//
//  Context.swift
//  ParserPattern
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色四: 解析器上下文
class Context {
    
    var expressionArray = [ExpressionProtocol]()
    
    // 10 + 20 + 30
    func calculate(expression: String) -> Float {
        let array = expression.split(separator: " ")
        for i in 0..<array.count {
            let str = String(array[i])
            if i == 0 {
                self.expressionArray.append(TerminatorExpression(number: String(str)))
            } else if str == "+" {
                let left = self.expressionArray.removeLast()
                let right = TerminatorExpression(number: String(array[i + 1]))
                self.expressionArray.append(NonTerminalExpression(left: left, right: right))
            }
        }
        let left = self.expressionArray.removeLast()
        return left.calculate()
    }
    
}
