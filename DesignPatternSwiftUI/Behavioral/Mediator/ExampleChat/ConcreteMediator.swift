//
//  ConcreteMediator.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 30/1/22.
//

import Foundation

final class ConcreteMediator: Mediator {
    var user1: ConcreteColleague1?
    var user2: ConcreteColleague2?
    
    func setColleague1(colleague1: ConcreteColleague1) {
        user1 = colleague1
    }
    
    func setColleague2(colleague2: ConcreteColleague2) {
        user2 = colleague2
    }
    
    func send(message: String, colleague: Colleague) {
        if colleague === user1 {
            user2?.messageReceived(message: message)
        }
        
        if colleague === user2 {
            user1?.messageReceived(message: message)
        }
    }
}
