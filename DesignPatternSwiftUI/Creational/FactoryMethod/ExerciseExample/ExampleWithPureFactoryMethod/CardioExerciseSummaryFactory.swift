//
//  CardioExerciseSummaryFactory.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 19/1/22.
//

import Foundation

final class CardioExerciseSummaryFactory: ExerciseSummaryFactoryProtocol {
    func getExerciseSummaryFactory() -> ExerciseSummary {
        CardioExerciseSummary()
    }
}
