//
//  CardSingletonExampleView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 27/1/22.
//

import SwiftUI

struct CardSingletonExampleView: View {
    
    let instancia1 = CardSingleton.shared
    let instancia2 = CardSingleton.shared
    
    func testSingleton() {
        if instancia1 === instancia2 {
            print("Son la misma instancia")
        }
    }
    
    var body: some View {
        Text(instancia2.doSomething()).onAppear {
            testSingleton()
        }
    }
}

struct CardSingletonExampleView_Previews: PreviewProvider {
    static var previews: some View {
        CardSingletonExampleView()
    }
}
