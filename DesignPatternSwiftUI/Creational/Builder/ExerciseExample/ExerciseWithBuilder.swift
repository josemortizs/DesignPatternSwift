//
//  ExerciseWithBuilder.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 15/7/22.
//

import Foundation

final class ExerciseWithBuilder {
    
    private var type: ExerciseTypes = .cardio
    private var name: String = ""
    private var series: Int = 0
    private var repetitions: Int = 0
    private var weight: Double = 0
    private var duration: Int = 0
    private var racePace: String = ""
    private var heartRate: Int = 0
    private var rest: Int = 0
    private var description: String = ""
    private var needBarbell: Bool = false
    private var needDumpers: Bool = false
    private var needBall: Bool = false
    private var needDumbbells: Bool = false

    public func showInfo() {
        print("Name: \(self.name) - Description: \(self.description) - NecesitaBarra: \(self.needBarbell ? "Sí" : "No")")
    }
    
    class ExerciseBuilder {
        
        private var innerExercise = ExerciseWithBuilder()
        
        func exerciseType(exerciseType: ExerciseTypes) -> ExerciseBuilder {
            innerExercise.type = exerciseType
            return self
        }
        
        func name(name: String) -> ExerciseBuilder {
            innerExercise.name = name
            return self
        }
        
        func racePace(racePace: String) -> ExerciseBuilder {
            innerExercise.racePace = racePace
            return self
        }
        
        func description(description: String) -> ExerciseBuilder {
            innerExercise.description = description
            return self
        }
        
        func series(series: Int) -> ExerciseBuilder {
            innerExercise.series = series
            return self
        }
        
        func repetitions(repetitions: Int) -> ExerciseBuilder {
            innerExercise.repetitions = repetitions
            return self
        }
        
        func duration(duration: Int) -> ExerciseBuilder {
            innerExercise.duration = duration
            return self
        }
        
        func heartRate(heartRate: Int) -> ExerciseBuilder {
            innerExercise.heartRate = heartRate
            return self
        }
        
        func rest(rest: Int) -> ExerciseBuilder {
            innerExercise.rest = rest
            return self
        }
        
        func weight(weight: Double) -> ExerciseBuilder {
            innerExercise.weight = weight
            return self
        }
        
        func needBarbell(needBarbell: Bool) -> ExerciseBuilder {
            innerExercise.needBarbell = needBarbell
            innerExercise.needDumpers = true
            innerExercise.needDumbbells = false
            innerExercise.needBall = false
            return self
        }
        
        func needBall(needBall: Bool) -> ExerciseBuilder {
            innerExercise.needBall = needBall
            innerExercise.needDumpers = false
            innerExercise.needBarbell = false
            innerExercise.needDumbbells = false
            return self
        }
        
        func needDumbbells(needDumbbells: Bool) -> ExerciseBuilder {
            innerExercise.needDumbbells = needDumbbells
            innerExercise.needDumpers = false
            innerExercise.needBarbell = false
            innerExercise.needBall = false
            return self
        }
        
        func build() -> ExerciseWithBuilder {
            return innerExercise
        }
    }
    
}
