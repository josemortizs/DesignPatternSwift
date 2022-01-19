//
//  PaymentAFMethodClient.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 19/1/22.
//

import Foundation

final class PaymentAFMethodClient {
    static func getPaymentAndMethod(factory: AbstractFactory) {
        let payment = factory.createPayment()
        let method = factory.createMethod()
        
        payment.doPayment()
        method.calculatePayment()
    }
}

