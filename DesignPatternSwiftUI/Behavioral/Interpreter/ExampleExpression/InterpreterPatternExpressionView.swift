//
//  InterpreterPatternExpressionView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 12/2/22.
//

import SwiftUI

struct InterpreterPatternExpressionView: View {
    
    func testInterpreter() {
        
        let cero = TerminalExpression(text: "0")
        let uno = TerminalExpression(text: "1")
        
        let containsOneOrCero = OrExpression(expression1: cero, expression2: uno)
        print(containsOneOrCero.interpret(context: "cero"))
        print(containsOneOrCero.interpret(context: "0"))
        
        
        let containsOneAndCero = AndExpression(expression1: cero, expression2: uno)
        print(containsOneAndCero.interpret(context: "cero, 0"))
        print(containsOneAndCero.interpret(context: "0, 1"))
        
    }
    
    var body: some View {
        Text("Hello, World!")
            .onAppear {
                testInterpreter()
            }
    }
}

struct InterpreterPatternExpressionView_Previews: PreviewProvider {
    static var previews: some View {
        InterpreterPatternExpressionView()
    }
}
