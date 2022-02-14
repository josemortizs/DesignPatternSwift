//
//  ExampleBridgeBankView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 14/2/22.
//

import SwiftUI

struct ExampleBridgeBankView: View {
    
    func testBridge() {
        var classic = ClassicCreditCard(creditCard: UnsecureCreditCard())
        classic.makePayment()
        
        classic = ClassicCreditCard(creditCard: SecureCreditCard())
        classic.makePayment()
    }
    
    var body: some View {
        Text("Hello, World!")
            .onAppear {
                testBridge()
            }
    }
}

struct ExampleBridgeBankView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleBridgeBankView()
    }
}
