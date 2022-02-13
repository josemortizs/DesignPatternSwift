//
//  OfferElement.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 13/2/22.
//

import Foundation

protocol OffertElement {
    func accept(visitor: CreditCardVisitor)
}
