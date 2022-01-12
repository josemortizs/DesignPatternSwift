//
//  LocalEarnFactory.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 12/1/22.
//

import Foundation

final class LocalEarnFactory: EarnFactoryProtocol {
    
    private var percentage: Double
    
    init(percentage: Double) {
        self.percentage = percentage
    }
    
    func getEarn() -> EarnProtocol {
        LocalEarn(percentage: self.percentage)
    }
    
}
