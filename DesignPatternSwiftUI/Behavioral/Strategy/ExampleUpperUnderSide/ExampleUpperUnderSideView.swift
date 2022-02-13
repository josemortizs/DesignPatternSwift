//
//  ExampleUpperUnderSideView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 13/2/22.
//

import SwiftUI

struct ExampleUpperUnderSideView: View {
    
    func testStrategy() {
        let context = Context(strategy: CapitalStrategyTextFormatter())
        context.publishText(text: "Este texto será convertido a mayúsculas a través de nuestro algoritmo")
    }
    
    var body: some View {
        Text("Hello, World!")
            .onAppear {
                testStrategy()
            }
    }
}

struct ExampleUpperUnderSideView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleUpperUnderSideView()
    }
}
