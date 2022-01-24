//
//  PrototypeCardExampleView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 24/1/22.
//

import SwiftUI

struct PrototypeCardExampleView: View {
    
    func testPrototype() {
        let original = VisaCard(cardNumber: 1111, cardType: "Credit")
        
        guard let copy = original.copy() as? VisaCard else {
            return
        }
        print(original.cardName)
        print(copy.cardName)
        
        print(original.cardNumber)
        print(copy.cardNumber)
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                testPrototype()
            }
    }
}

struct PrototypeCardExampleView_Previews: PreviewProvider {
    static var previews: some View {
        PrototypeCardExampleView()
    }
}
