//
//  VisaCard.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 24/1/22.
//

import Foundation

final class VisaCard: PrototypeCard {
    
    var cardName = "VISA"
    
    func copy() -> Any {
        return copy(with: nil)
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        guard let prototype = super.copy(with: zone) as? VisaCard else {
            return VisaCard()
        }
        prototype.cardName = cardName
        print("Clonado tarjeta Vista correctamente")
        return prototype
    }
}
