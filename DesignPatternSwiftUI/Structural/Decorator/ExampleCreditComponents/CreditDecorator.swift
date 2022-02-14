//
//  CreditDecorator.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 14/2/22.
//

import Foundation

class CreditDecorator: CreditComponent {
    
    var decorated: CreditComponent
    
    init(decorated: CreditComponent) {
        self.decorated = decorated
    }
    
    func showCredit() {
        self.decorated.showCredit()
    }
}
