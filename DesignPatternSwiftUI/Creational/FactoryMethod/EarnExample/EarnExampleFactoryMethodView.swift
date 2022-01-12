//
//  EarnExampleFactoryMethodView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 12/1/22.
//

import SwiftUI

struct EarnExampleFactoryMethodView: View {
    
    @State var profit: String = ""
    
    var totalSale: Double = 1500
    var extra: Double = 200
    var percentage: Double = 0.2
    
    private func testFactoryMethod() {
        let localEarnFactory = LocalEarnFactory(percentage: percentage)
        let foreignEarnFactory = ForeignEarnFactory(percentage: percentage, extra: extra)
        
        //let earn = localEarnFactory.getEarn()
        let earn = foreignEarnFactory.getEarn()
        
        self.profit = String(earn.calculateProfit(amount: totalSale))
    }
    
    var body: some View {
        Text("Las ganancias han sido: \(profit)")
            .onAppear {
                testFactoryMethod()
            }
    }
}

struct EarnExampleFactoryMethodView_Previews: PreviewProvider {
    static var previews: some View {
        EarnExampleFactoryMethodView()
    }
}
