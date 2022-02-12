//
//  AndExpression.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 12/2/22.
//

import Foundation

final class AndExpression: Expression {
    
    var expression1: Expression
    var expression2: Expression
    
    init(expression1: Expression, expression2: Expression) {
        self.expression1 = expression1
        self.expression2 = expression2
    }
    
    func interpret(context: String) -> Bool {
        return expression1.interpret(context: context) && expression2.interpret(context: context)
    }
}
