//
//  AbstractFactoryPaymentMethodExampleView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 19/1/22.
//

import SwiftUI

struct AbstractFactoryPaymentMethodExampleView: View {
    
    func testAbstractFactory() {
        PaymentAFMethodClient.getPaymentAndMethod(factory: MontlyGoogleFactory())
        PaymentAFMethodClient.getPaymentAndMethod(factory: PaymentInAdvanceCardFactory())
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).onAppear {
            testAbstractFactory()
        }
    }
}

struct AbstractFactoryPaymentMethodExampleView_Previews: PreviewProvider {
    static var previews: some View {
        AbstractFactoryPaymentMethodExampleView()
    }
}
