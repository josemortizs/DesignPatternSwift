//
//  CreditCardIterator.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 29/1/22.
//

import Foundation

class CreditCardIterator: IteratorProtocol {

    private var position = 0
    
    let cards: CreditCardCollection
    
    init(cards: CreditCardCollection) {
        self.cards = cards
    }
    
    func next() -> CreditCard? {
        defer {
            position += 1
        }
        return cards.items.count > position ? cards.items[position] : nil
    }
}
