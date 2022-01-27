//
//  CardSingleton.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 27/1/22.
//

import Foundation

final class CardSingleton {
    
    static var shared = CardSingleton()
    
    private init() {}
    
    func doSomething() -> String {
        return "Haciendo el trabajo de la clase Singleton..."
    }
    
}
