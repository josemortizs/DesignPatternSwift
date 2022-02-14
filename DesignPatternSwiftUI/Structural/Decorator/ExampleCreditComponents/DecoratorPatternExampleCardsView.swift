//
//  DecoratorPatternExampleCardsView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 14/2/22.
//

import SwiftUI

struct DecoratorPatternExampleCardsView: View {
    
    func testDecorator() {
        
        let blackInternationalPayment = InternationalPaymentDecorator(decorated: BlackCreditComponent())
        print("----- Tarjeta Black Configurada -----")
        blackInternationalPayment.showCredit()
        
        let goldSecurePayment = SecureDecorator(decorated: GoldCreditComponent())
        print("----- Tarjeta Gold Configurada -----")
        goldSecurePayment.showCredit()
    }
    
    var body: some View {
        Text("Hello, World!")
            .onAppear {
                testDecorator()
            }
    }
}

struct DecoratorPatternExampleCardsView_Previews: PreviewProvider {
    static var previews: some View {
        DecoratorPatternExampleCardsView()
    }
}
