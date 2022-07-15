//
//  SportExerciseSummary.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 3/6/22.
//

import Foundation

final class SportExerciseSummary: ExerciseSummary {
    func getExerciseSummary(exercise: Exercise) -> String {
        return  """
                \(exercise.name)
                Descripción: \(exercise.description) \n
                """
    }
}
