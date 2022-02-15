//
//  FlyweightPatternExampleEnemiesView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 15/2/22.
//

import SwiftUI

struct FlyweightPatternExampleEnemiesView: View {
    
    let enemyType = ["Soldier", "Detective"]
    let weapon = ["Fusil", "Revolver", "Pistola"]
    
    func getRandomEnemytype() -> String {
        let number = Int.random(in: 0 ..< enemyType.count)
        return enemyType[number]
    }
    
    func getRandonWeapon() -> String {
        let number = Int.random(in: 0 ..< weapon.count)
        return weapon[number]
    }
    
    func testFlyweight() {
        let enemyFactory = EnemyFactory()
        for _ in 0 ... 10 {
            let enemy = enemyFactory.getEnemy(type: getRandomEnemytype())
            enemy.setWeapon(weapong: getRandonWeapon())
            enemy.lifePoints()
        }
    }
    
    var body: some View {
        Text("Hello, World!")
            .onAppear {
                testFlyweight()
            }
    }
}

struct FlyweightPatternExampleEnemiesView_Previews: PreviewProvider {
    static var previews: some View {
        FlyweightPatternExampleEnemiesView()
    }
}
