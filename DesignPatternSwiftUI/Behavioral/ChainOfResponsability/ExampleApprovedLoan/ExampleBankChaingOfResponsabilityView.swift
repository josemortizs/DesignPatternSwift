//
//  ExampleBankChaingOfResponsabilityView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 27/1/22.
//

import SwiftUI

struct ExampleBankChaingOfResponsabilityView: View {
    
    func testChainOfResponsability() {
        let bank = BankHandler()
        bank.creditCardRequest(totalLoan: 150000)
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                testChainOfResponsability()
            }
    }
}

struct ExampleBankChaingOfResponsabilityView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleBankChaingOfResponsabilityView()
    }
}
