//
//  CreditCardInvoker.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 28/1/22.
//

import Foundation

final class CreditCardInvoker {
    
    private var command: Command?
    
    func setCommand(command: Command) {
        self.command = command
    }
    
    func run() {
        command?.execute()
    }
}
