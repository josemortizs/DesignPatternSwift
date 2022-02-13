//
//  VisitorExampleOfferView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 13/2/22.
//

import SwiftUI

struct VisitorExampleOfferView: View {
    
    func testVisitor() {
        let offer = GasolineOffer()
        offer.accept(visitor: BlackCreditCardVisitor())
        
        
    }
    
    var body: some View {
        Text("Hello, World!")
            .onAppear {
                testVisitor()
            }
    }
}

struct VisitorExampleOfferView_Previews: PreviewProvider {
    static var previews: some View {
        VisitorExampleOfferView()
    }
}
