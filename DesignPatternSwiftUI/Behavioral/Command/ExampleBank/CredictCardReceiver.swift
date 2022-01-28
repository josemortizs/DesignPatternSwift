//
//  CredictCardReceiver.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 28/1/22.
//

import Foundation

class CredictCardReceiver {
    func sendPINNumberToCustomer() {
        print("Se ha enviado el pin al cliente")
    }
    
    func sendSMSToCustomerAcrtive() {
        print("Se ha enviado un sms al cliente indicándole que la tarjeta ha sido activada")
    }
    
    func activate() {
        print("La tarjeta ha sido activada")
    }
    
    func deactivate() {
        print("La tarjeta has sido desactivada")
    }
    
    func sendSMSToCustomerDeactivate() {
        print("Se ha enviado un sms al cliente indicándole que la tarjeta ha sido desactivada")
    }
}
