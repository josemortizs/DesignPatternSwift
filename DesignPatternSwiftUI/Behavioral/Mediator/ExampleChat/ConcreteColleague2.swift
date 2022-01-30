//
//  ConcreteColleague2.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 30/1/22.
//

import Foundation

class ConcreteColleague2: Colleague {
    
    override func send(message: String) {
        mediator.send(message: message, colleague: self)
    }
    
    override func messageReceived(message: String) {
        print("Usuario 2 ha recibido el mensaje: \(message)")
    }
}
