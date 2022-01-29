//
//  CreditCardCollection.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 29/1/22.
//

import Foundation

class CreditCardCollection {
    
    var items = [CreditCard]()
    
    func append(_ item: CreditCard) {
        self.items.append(item)
    }
}

extension CreditCardCollection: Sequence {
    
    func makeIterator() -> CreditCardIterator {
        return CreditCardIterator(cards: self)
    }
}
