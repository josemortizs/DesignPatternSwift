//
//  ProxyInternet.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 15/2/22.
//

import Foundation

final class ProxyInternet: Internet {
    
    var internet = AccessToInternet()
    var bannedUrl = [String]()
    
    init() {
        bannedUrl.append("twitter.com")
        bannedUrl.append("google.com")
    }
    
    func connectTo(url: String) {
        if bannedUrl.contains(url) {
            print("Intentando conectar a: \(url) ...")
            print("NO es un url válida")
        } else {
            internet.connectTo(url: url)
        }
    }
}
