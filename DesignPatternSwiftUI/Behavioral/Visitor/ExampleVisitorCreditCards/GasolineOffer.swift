//
//  GasolineOffer.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 13/2/22.
//

import Foundation

final class GasolineOffer: OffertElement {
    func accept(visitor: CreditCardVisitor) {
        visitor.gassolineOffer(gasolineOffer: self)
    }
}
