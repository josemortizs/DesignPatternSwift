//
//  BuilderExampleView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 20/1/22.
//

import SwiftUI

struct BuilderExampleView: View {
    
    func testBuilder() {
        var card: Card = Card.CardBuilder()
            .cardType(cardType: "VISA")
            .number(number: "1111 2222 22 3333333333")
            .expired(expired: 2025)
            .build()
        
        card.showCard()
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                testBuilder()
            }
    }
}

struct BuilderExampleView_Previews: PreviewProvider {
    static var previews: some View {
        BuilderExampleView()
    }
}
