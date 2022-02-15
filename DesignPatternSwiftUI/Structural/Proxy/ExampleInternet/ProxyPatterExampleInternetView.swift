//
//  ProxyPatterExampleInternetView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 15/2/22.
//

import SwiftUI

struct ProxyPatterExampleInternetView: View {
    
    func testProxy() {
        let internet = ProxyInternet()
        internet.connectTo(url: "udemy.com")
        internet.connectTo(url: "google.com")
    }
    
    var body: some View {
        Text("Hello, World!")
            .onAppear {
                testProxy()
            }
    }
}

struct ProxyPatterExampleInternetView_Previews: PreviewProvider {
    static var previews: some View {
        ProxyPatterExampleInternetView()
    }
}
