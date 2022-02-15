//
//  Soldier.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 15/2/22.
//

import Foundation

final class Soldier: Enemy {
    
    let LIFE = 200
    var weapon = ""
    
    func setWeapon(weapong: String) {
        self.weapon = weapong
        print("Arma: \(weapong) creada para un enemigo")
    }
    
    func lifePoints() {
        print("La vida de un soldado es \(LIFE)")
    }
}
