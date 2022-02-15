//
//  FacadePatternExampleCreditCardsView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 15/2/22.
//

import SwiftUI

struct FacadePatternExampleCreditCardsView: View {
    
    func testFacade() {
        let facade = CreditMarketFacade()
        facade.showCreditBlack()
        facade.showCreditGold()
        facade.showCreditSilver()
    }
    
    var body: some View {
        Text("Hello, World!")
            .onAppear {
                testFacade()
            }
    }
}

struct FacadePatternExampleCreditCardsView_Previews: PreviewProvider {
    static var previews: some View {
        FacadePatternExampleCreditCardsView()
    }
}
