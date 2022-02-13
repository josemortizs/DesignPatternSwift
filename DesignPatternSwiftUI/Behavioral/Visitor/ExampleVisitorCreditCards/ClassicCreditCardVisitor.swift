//
//  ClassicCreditCardVisitor.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 13/2/22.
//

import Foundation

final class ClassicCreditCardVisitor: CreditCardVisitor {
    func flightOffer(flightOffer: FlightsOffer) {
        print("Descuento del 5% en vuelos con tu tarjeta clásica")
    }
    
    func gassolineOffer(gasolineOffer: GasolineOffer) {
        print("Descuento del 3% en combustible")
    }
}
