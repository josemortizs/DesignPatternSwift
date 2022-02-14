//
//  CreditCardB.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 14/2/22.
//

import Foundation

class CreditCardBridge {
    let creditCard: CreditCardProtocol
    
    init(creditCard: CreditCardProtocol) {
        self.creditCard = creditCard
    }
    
    func makePayment() {}
}
