//
//  CredictCardActivateCommand.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 28/1/22.
//

import Foundation

final class CreditCardActivateCommand: Command {
    
    var creditCardReceiver: CredictCardReceiver
    
    init(creditCardReceiver: CredictCardReceiver) {
        self.creditCardReceiver = creditCardReceiver
    }
    
    func execute() {
        creditCardReceiver.sendPINNumberToCustomer()
        creditCardReceiver.activate()
        creditCardReceiver.sendSMSToCustomerAcrtive()
    }
}
