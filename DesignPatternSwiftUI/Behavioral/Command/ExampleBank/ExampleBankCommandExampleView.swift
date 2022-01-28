//
//  ExampleBankCommandExampleView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 28/1/22.
//

import SwiftUI

struct ExampleBankCommandExampleView: View {
    
    func testCommand() {
        
        let creditCard = CredictCardReceiver()
        let invoker = CreditCardInvoker()
        
        //invoker.setCommand(command: CreditCardActivateCommand(creditCardReceiver: creditCard))
        invoker.setCommand(command: CreditCardDeactivateCommand(creditCardReceiver: creditCard))
        
        invoker.run()
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).onAppear {
            testCommand()
        }
    }
}

struct ExampleBankCommandExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleBankCommandExampleView()
    }
}
