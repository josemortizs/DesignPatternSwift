//
//  PaymentTemplate.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 13/2/22.
//

import Foundation

protocol PaymentTemplate {
    func initialize()
    func startPayment()
    func endPayment()
}

extension PaymentTemplate {
    func makePayment() {
        initialize()
        startPayment()
        endPayment()
    }
}
