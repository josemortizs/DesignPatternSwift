//
//  ApprovedLoanHandler.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 27/1/22.
//

import Foundation

protocol ApprovedLoanHandler {
    
    func setNext(handler: ApprovedLoanHandler)
    func getNext() -> ApprovedLoanHandler
    func creditCardRequest(totalLoan: Int)
}
