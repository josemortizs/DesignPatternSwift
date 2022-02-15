//
//  AccessToInternet.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 15/2/22.
//

import Foundation

final class AccessToInternet: Internet {
    func connectTo(url: String) {
        print("Intentando conectar a: \(url)")
    }
}
