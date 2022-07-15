//
//  Card.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 20/1/22.
//

import Foundation

final class Card {
    
    private var cardType: String = ""
    private var number: String = ""
    private var expired: Int = 0
    
    func showCard() {
        print("Tarjeta: \(cardType) - \(number)")
    }
    
    class CardBuilder {
        
        private var innerCard = Card()
        
        func cardType(cardType: String) -> CardBuilder {
            innerCard.cardType = cardType
            return self
        }
        
        func number(number: String) -> CardBuilder {
            innerCard.number = number
            return self
        }
        
        func expired(expired: Int) -> CardBuilder {
            innerCard.expired = expired
            return self
        }
        
        func build() -> Card {
            return innerCard
        }
    }
}
