//
//  PaymentFactory.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 12/1/22.
//

import Foundation

final class PaymentFactory {
    static func buildPayment(typePayment: PaymentTypes) -> Payment {
        switch typePayment {
        case .google:
            return GooglePayment()
        case .card:
            return CardPayment()
        }
    }
}
