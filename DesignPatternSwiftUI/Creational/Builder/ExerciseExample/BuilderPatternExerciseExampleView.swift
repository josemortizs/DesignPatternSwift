//
//  BuilderPatternExerciseExampleView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 15/7/22.
//

import SwiftUI

struct BuilderPatternExerciseExampleView: View {
    
    let pressBancaNoBuilder = ExerciseWithoutBuilder(type: .strength, name: "Press Banca", series: 4, repetitions: 12, weight: 110, duration: 0, racePace: "", heartRate: 0, rest: 90, description: "", needBarbell: true, needDumpers: true, needBall: false, needDumbbells: false)

    let carreraNoBuilder = ExerciseWithoutBuilder(type: .cardio, name: "Carrera por la playa", series: 0, repetitions: 0, weight: 0, duration: 3600, racePace: "5 min/km", heartRate: 150, rest: 0, description: "Corre por la arena, sin hacer cambios de ritmo e intentando mantener la frecuencia cardíaca", needBarbell: false, needDumpers: false, needBall: false, needDumbbells: false)
    
    let pressBancaBuilder = ExerciseWithBuilder.ExerciseBuilder()
        .exerciseType(exerciseType: .strength)
        .name(name: "Press Banca")
        .series(series: 4)
        .repetitions(repetitions: 12)
        .weight(weight: 110)
        .rest(rest: 90)
        .needBarbell(needBarbell: true)
        .build()
    
    let carreraBuilder = ExerciseWithBuilder.ExerciseBuilder()
        .exerciseType(exerciseType: .cardio)
        .name(name: "Carrera por la playa")
        .duration(duration: 3600)
        .racePace(racePace: "5 min/km")
        .heartRate(heartRate: 150)
        .description(description: "Corre por la arena, sin hacer cambios de ritmo e intentando mantener la frecuencia cardíaca")
        .build()
    
    let partidoFutbol = ExerciseWithBuilder.ExerciseBuilder()
        .exerciseType(exerciseType: .sport)
        .name(name: "Partido de Futbol")
        .build()
    
    var body: some View {
        Text("Builder Pattern")
            .onAppear {
                pressBancaNoBuilder.showInfo()
                carreraNoBuilder.showInfo()
                
                pressBancaBuilder.showInfo()
                carreraBuilder.showInfo()
            }
    }
}

struct BuilderPatternExerciseExampleView_Previews: PreviewProvider {
    static var previews: some View {
        BuilderPatternExerciseExampleView()
    }
}
