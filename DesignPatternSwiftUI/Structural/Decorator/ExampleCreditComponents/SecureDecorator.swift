//
//  SecureDecorator.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 14/2/22.
//

import Foundation

final class SecureDecorator: CreditDecorator {
    
    override init(decorated: CreditComponent) {
        super.init(decorated: decorated)
    }
    
    override func showCredit() {
        decorated.showCredit()
        configSecure()
    }
    
    func configSecure() {
        print("Tarjeta configurada con pago Secure")
    }
    
}
