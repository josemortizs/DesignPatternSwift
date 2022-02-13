//
//  CreditCardVisitor.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 13/2/22.
//

import Foundation

protocol CreditCardVisitor {
    func gassolineOffer(gasolineOffer: GasolineOffer)
    func flightOffer(flightOffer: FlightsOffer)
}
