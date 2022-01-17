//
//  CardioExerciseSummary.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 17/1/22.
//

import Foundation

final class CardioExerciseSummary: ExerciseSummary {
    func getExerciseSummary(exercise: Exercise) -> String {
        return  """
                \(exercise.name)
                Duración: \(exercise.duration) segundos
                Descripción: \(exercise.description) \n
                """
    }
}
