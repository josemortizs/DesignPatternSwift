//
//  BlackCreditCardVisitor.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 13/2/22.
//

import Foundation

final class BlackCreditCardVisitor: CreditCardVisitor {
    func gassolineOffer(gasolineOffer: GasolineOffer) {
        print("Descuento del 10% en combustible")
    }
    
    func flightOffer(flightOffer: FlightsOffer) {
        print("Descuento del 25% en vuelos con tu tarjeta clásica")
    }
    
}
