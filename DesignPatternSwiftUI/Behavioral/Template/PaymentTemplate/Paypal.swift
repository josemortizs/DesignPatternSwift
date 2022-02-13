//
//  Paypal.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 13/2/22.
//

import Foundation

final class Paypal: PaymentTemplate {
    func initialize() {
        print("Inicializando el pago...")
    }
    
    func startPayment() {
        print("Realizando el pago a través de Paypal...")
    }
    
    func endPayment() {
        print("Pago por Paypal finalizado...")
    }
}
