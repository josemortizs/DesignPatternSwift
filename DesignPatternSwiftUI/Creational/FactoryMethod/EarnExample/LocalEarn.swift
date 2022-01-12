//
//  LocalEarn.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 12/1/22.
//

import Foundation

final class LocalEarn: EarnProtocol {
    
    private let percentage: Double
    
    init(percentage: Double) {
        self.percentage = percentage
    }
    
    func calculateProfit(amount: Double) -> Double {
        return amount * percentage
    }
}
