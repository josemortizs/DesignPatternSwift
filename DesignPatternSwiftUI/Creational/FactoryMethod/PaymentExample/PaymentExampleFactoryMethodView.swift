//
//  PaymentExampleFactoryMethodView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 12/1/22.
//

import SwiftUI

struct PaymentExampleFactoryMethodView: View {
    
    private func testFactoryMethod() -> Void {
        var payment: Payment
        payment = PaymentFactory.buildPayment(typePayment: .card)
        payment.doPayment()
        payment = PaymentFactory.buildPayment(typePayment: .google)
        payment.doPayment()
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                testFactoryMethod()
            }
    }
}

struct PaymentExampleFactoryMethodView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentExampleFactoryMethodView()
    }
}
