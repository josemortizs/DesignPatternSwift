//
//  AbstractFactory.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 19/1/22.
//

import Foundation

protocol AbstractFactory {
    func createPayment() -> PaymentAF
    func createMethod() -> MethodAF
}
