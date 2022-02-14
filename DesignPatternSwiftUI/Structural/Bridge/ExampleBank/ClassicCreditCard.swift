//
//  ClassicCreditCard.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 14/2/22.
//

import Foundation

final class ClassicCreditCard: CreditCardBridge {
    
    override init(creditCard: CreditCardProtocol) {
        super.init(creditCard: creditCard)
    }
    
    override func makePayment() {
        creditCard.makePayment()
    }
}
