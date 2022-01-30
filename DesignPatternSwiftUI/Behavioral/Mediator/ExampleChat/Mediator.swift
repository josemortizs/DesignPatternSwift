//
//  Mediator.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 30/1/22.
//

import Foundation

protocol Mediator {
    func send(message: String, colleague: Colleague)
}
