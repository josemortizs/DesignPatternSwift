//
//  StrengthExerciseSummary.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 17/1/22.
//

import Foundation

final class StrengthExerciseSummary: ExerciseSummary {
    func getExerciseSummary(exercise: Exercise) -> String {
        return  """
                \(exercise.name)
                Series: \(exercise.series)
                Repeticiones: \(exercise.repetitions)
                Peso: \(exercise.weight) kg
                Descanso: \(exercise.rest) segundos \n
                """
    }
}
