//
//  ForeignEarnFactory.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 12/1/22.
//

import Foundation

final class ForeignEarnFactory: EarnFactoryProtocol {
    
    private var percentage: Double
    private var extra: Double
    
    init(percentage: Double, extra: Double) {
        self.percentage = percentage
        self.extra = extra
    }
    
    func getEarn() -> EarnProtocol {
        ForeignEarn(percentage: self.percentage, extra: self.extra)
    }
}
