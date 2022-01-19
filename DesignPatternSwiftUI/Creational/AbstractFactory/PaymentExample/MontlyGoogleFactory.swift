//
//  MontlyGoogleFactory.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 19/1/22.
//

import Foundation

final class MontlyGoogleFactory: AbstractFactory {
    func createPayment() -> PaymentAF {
        GooglePaymentAF()
    }
    
    func createMethod() -> MethodAF {
        MontlyMethodAF()
    }
}
