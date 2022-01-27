//
//  GoldHandler.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 27/1/22.
//

import Foundation

final class GoldHandler: ApprovedLoanHandler {
    
    private var next: ApprovedLoanHandler?
    
    func setNext(handler: ApprovedLoanHandler) {
        self.next = handler
    }
    
    func getNext() -> ApprovedLoanHandler {
        self.next!
    }
    
    func creditCardRequest(totalLoan: Int) {
        if totalLoan < 10000 {
            print("Esta solicitud de tarjeta de credito la maneja la clase GoldHandler")
        } else {
            self.next!.creditCardRequest(totalLoan: totalLoan)
        }
    }
}
