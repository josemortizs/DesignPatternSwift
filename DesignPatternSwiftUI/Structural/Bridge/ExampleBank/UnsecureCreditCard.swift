//
//  UnsecureCreditCard.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 14/2/22.
//

import Foundation

final class UnsecureCreditCard: CreditCardProtocol {
    func makePayment() {
        print("Mediente esta función, con este tipo de tarjeta, podrías realizar un pago NO SEGURO")
    }
}
