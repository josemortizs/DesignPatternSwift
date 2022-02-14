//
//  CompositePatternAccountExampleView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 14/2/22.
//

import SwiftUI

struct CompositePatternAccountExampleView: View {
    
    func testComposite() {
        let savings = SavingsAccount()
        let current = CurrentAccount()
        
        let composite = AccountComposite()
        composite.addAccount(account: savings)
        composite.addAccount(account: current)
        
        composite.showAccountName()
    }
    
    var body: some View {
        Text("Hello, World!")
            .onAppear {
                testComposite()
            }
    }
}

struct CompositePatternAccountExampleView_Previews: PreviewProvider {
    static var previews: some View {
        CompositePatternAccountExampleView()
    }
}
