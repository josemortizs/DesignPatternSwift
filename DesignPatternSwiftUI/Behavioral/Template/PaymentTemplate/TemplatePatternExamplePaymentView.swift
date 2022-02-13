//
//  TemplatePatternExamplePaymentView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 13/2/22.
//

import SwiftUI

struct TemplatePatternExamplePaymentView: View {
    
    func testTemplate() {
        let paymentMethodVisa = Visa()
        paymentMethodVisa.makePayment()
    }
    
    var body: some View {
        Text("Hello, World!")
            .onAppear {
                testTemplate()
            }
    }
}

struct TemplatePatternExamplePaymentView_Previews: PreviewProvider {
    static var previews: some View {
        TemplatePatternExamplePaymentView()
    }
}
