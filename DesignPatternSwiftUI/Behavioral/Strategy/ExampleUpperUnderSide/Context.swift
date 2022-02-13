//
//  Context.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 13/2/22.
//

import Foundation

class Context {
    var strategyTextFormatter: StrategyTextFormatter
    
    init(strategy: StrategyTextFormatter) {
        self.strategyTextFormatter = strategy
    }
    
    public func publishText(text: String) {
        strategyTextFormatter.format(text: text)
    }
}
