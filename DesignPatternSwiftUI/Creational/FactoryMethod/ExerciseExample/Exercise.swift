//
//  Exercise.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 17/1/22.
//

import Foundation

struct Exercise {
    var id: Int
    var type: ExerciseTypes
    var name: String
    var series: Int
    var repetitions: Int
    var weight: Double
    var duration: Int
    var rest: Int
    var description: String
}

enum ExerciseTypes {
    case strength
    case cardio
}
