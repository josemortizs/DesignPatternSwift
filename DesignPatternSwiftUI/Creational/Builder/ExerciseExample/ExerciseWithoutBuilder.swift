//
//  Exercise.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 15/7/22.
//

import Foundation



final class ExerciseWithoutBuilder {
    
    let type: ExerciseTypes
    let name: String
    let series: Int
    let repetitions: Int
    let weight: Double
    let duration: Int
    let racePace: String
    let heartRate: Int
    let rest: Int
    let description: String
    let needBarbell: Bool
    let needDumpers: Bool
    let needBall: Bool
    let needDumbbells: Bool
    
    init(type: ExerciseTypes, name: String, series: Int, repetitions: Int, weight: Double, duration: Int, racePace: String, heartRate: Int, rest: Int, description: String, needBarbell: Bool, needDumpers: Bool, needBall: Bool, needDumbbells: Bool) {
        self.type = type
        self.name = name
        self.series = series
        self.repetitions = repetitions
        self.weight = weight
        self.duration = duration
        self.racePace = racePace
        self.heartRate = heartRate
        self.rest = rest
        self.description = description
        self.needBarbell = needBarbell
        self.needDumpers = needDumpers
        self.needBall = needBall
        self.needDumbbells = needDumbbells
    }
    
    public func showInfo() {
        print("Name: \(self.name) - Description: \(self.description) - NecesitaBarra: \(self.needBarbell ? "Sí" : "No")")
    }
}
