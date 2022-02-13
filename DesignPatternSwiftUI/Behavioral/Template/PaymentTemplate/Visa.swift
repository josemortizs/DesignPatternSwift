//
//  Visa.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 13/2/22.
//

import Foundation

final class Visa: PaymentTemplate {
    func initialize() {
        print("Inicializando el pago...")
    }
    
    func startPayment() {
        print("Realizando el pago a través de Visa...")
    }
    
    func endPayment() {
        print("Pago por Visa finalizado...")
    }
}
