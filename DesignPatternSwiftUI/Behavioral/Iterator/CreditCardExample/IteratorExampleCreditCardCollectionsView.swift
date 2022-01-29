//
//  IteratorExampleCreditCardCollectionsView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 29/1/22.
//

import SwiftUI

struct IteratorExampleCreditCardCollectionsView: View {
    
    /* Esto no parece tener ningún sentido, ¿para qué implementa la clase iterator? */
    /* El for card in myCards funcionaría igual sin usar ningún protocolo... */
    /* Dejo pregunta al profesor en el curso. */
    
    func testIterator() {
        let myCards = CreditCardCollection()
        myCards.append(CreditCard(type: "Gold"))
        myCards.append(CreditCard(type: "Black"))
        myCards.append(CreditCard(type: "Platinum"))
        
//        for card in myCards {
//            print(card.type)
//        }
        
        // Mirando la documentación de Apple aparece un ejemplo que puedo reproducir aquí:
        
        let myCardsIterator = myCards.makeIterator()
        while let card = myCardsIterator.next() {
            print(card.type )
        }

    }
    
    var body: some View {
        Text("Iterator example").onAppear {
            testIterator()
        }
    }
}

struct IteratorExampleCreditCardCollectionsView_Previews: PreviewProvider {
    static var previews: some View {
        IteratorExampleCreditCardCollectionsView()
    }
}
