//
//  PrototypeCard.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 24/1/22.
//

import Foundation

class PrototypeCard: NSCopying {
    
    var cardNumber = 0
    var cardType = ""
    
    required init(cardNumber: Int = 0, cardType: String = "") {
        self.cardNumber = cardNumber
        self.cardType = cardType
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let prototype = type(of: self).init()
        prototype.cardNumber = cardNumber
        prototype.cardType = cardType
        print("Los valores han sido clonados correctamente")
        return prototype
    }
}
