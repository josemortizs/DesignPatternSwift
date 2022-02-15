//
//  Detective.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 15/2/22.
//

import Foundation

final class Detective: Enemy {
    
    let LIFE = 1000
    var weapon = ""
    
    func setWeapon(weapong: String) {
        self.weapon = weapong
        print("Arma: \(weapong) creada para un enemigo")
    }
    
    func lifePoints() {
        print("La vida de un detective es \(LIFE)")
    }
}
