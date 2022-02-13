//
//  CapitalStrategyTextFormatter.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 13/2/22.
//

import Foundation

final class CapitalStrategyTextFormatter: StrategyTextFormatter {
    func format(text: String) {
        print("Texto en mayúsculas: \(text.uppercased())")
    }
}
