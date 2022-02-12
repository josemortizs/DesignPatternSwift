//
//  Expression.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 12/2/22.
//

import Foundation

protocol Expression {
    func interpret(context: String) -> Bool
}
