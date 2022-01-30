//
//  Colleague.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 30/1/22.
//

import Foundation

class Colleague {
    
    let mediator: Mediator
    
    init(mediator: Mediator) {
        self.mediator = mediator
    }
    
    func send(message: String) {}
    func messageReceived(message: String) {}
}
