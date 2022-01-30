//
//  ChatExampleMediatorExampleView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 30/1/22.
//

import SwiftUI

struct ChatExampleMediatorExampleView: View {
    
    func testMediator() {
        
        let mediator = ConcreteMediator()
        let user1 = ConcreteColleague1(mediator: mediator)
        let user2 = ConcreteColleague2(mediator: mediator)
        
        mediator.setColleague1(colleague1: user1)
        mediator.setColleague2(colleague2: user2)
        
        user1.send(message: "Hola, soy el usuario número 1")
        user2.send(message: "Hola, usuario número 1, soy el usuario número 2")
        
    }
    
    var body: some View {
        Text("Hello, World!").onAppear {
            testMediator()
        }
    }
}

struct ChatExampleMediatorExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ChatExampleMediatorExampleView()
    }
}
