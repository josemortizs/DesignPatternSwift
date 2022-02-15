//
//  EnemyFactory.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 15/2/22.
//

import Foundation

final class EnemyFactory {
    
    private var enemies = [String: Enemy]()
    
    func getEnemy(type: String) -> Enemy {
        var enemy: Enemy
        if (enemies[type] != nil) {
            enemy = enemies[type]!
        } else {
            switch type {
            case "Soldier":
                print("Soldado creado")
                enemy = Soldier()
            case "Detective":
                print("Detective creado")
                enemy = Detective()
            default:
                enemy = Detective()
            }
            enemies[type] = enemy
        }
        return enemy
    }
}
