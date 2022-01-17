//
//  ExerciseSummaryFactory.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 17/1/22.
//

import Foundation

final class ExerciseSummaryFactory {
    static func buildExerciseSummary(typeExerciseSummary: ExerciseTypes) -> ExerciseSummary {
        switch typeExerciseSummary {
        case .strength:
            return StrengthExerciseSummary()
        case .cardio:
            return CardioExerciseSummary()
        }
    }
}
