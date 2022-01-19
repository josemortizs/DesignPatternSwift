//
//  PaymentInAdvanceCardFactory.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 19/1/22.
//

import Foundation

final class PaymentInAdvanceCardFactory: AbstractFactory {
    func createPayment() -> PaymentAF {
        CardPaymentAF()
    }
    
    func createMethod() -> MethodAF {
        PaymentInAdvanceMethodAF()
    }
}
