//
//  ExampleAdapterPatternSum.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 14/2/22.
//

import SwiftUI

struct ExampleAdapterPatternSum: View {
    
    func testAdapter() {
        let adaptee = OperationAdaptee(a: 3, b: 4)
        if adaptee.sum() == 7 {
            print("OK con INT")
        }
        
        let adapter = OperationAdapter(adaptee: adaptee)
        if adapter.getSum == "7" {
            print("OK con String")
        }
    }
    
    var body: some View {
        Text("Hello, World!")
            .onAppear {
                testAdapter()
            }
    }
}

struct ExampleAdapterPatternSum_Previews: PreviewProvider {
    static var previews: some View {
        ExampleAdapterPatternSum()
    }
}
