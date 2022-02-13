//
//  LowerStrategyTextFormatter.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 13/2/22.
//

import Foundation

final class LowerStrategyTextFormatter: StrategyTextFormatter {
    func format(text: String) {
        print("Texto en minúsculas: \(text.lowercased())")
    }
}
