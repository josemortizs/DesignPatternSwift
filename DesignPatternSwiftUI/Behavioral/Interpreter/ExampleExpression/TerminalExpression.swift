//
//  TerminalExpression.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 12/2/22.
//

import Foundation

final class TerminalExpression: Expression {
    
    var text: String
    
    init(text: String) {
        self.text = text
    }
    
    func interpret(context: String) -> Bool {
        context.contains(text)
    }
}
