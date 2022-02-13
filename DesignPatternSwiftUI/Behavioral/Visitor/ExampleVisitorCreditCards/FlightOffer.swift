//
//  FlightOffer.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 13/2/22.
//

import Foundation

final class FlightsOffer: OffertElement {
    func accept(visitor: CreditCardVisitor) {
        visitor.flightOffer(flightOffer: self)
    }
}
