//
//  PureExercisesExampleFactoryMethodView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 19/1/22.
//

import SwiftUI

struct PureExercisesExampleFactoryMethodView: View {
    
    var exercises = [
        Exercise(id: 1, type: .cardio, name: "Bicicleta estática", series: 1, repetitions: 1, weight: 0, duration: 1200, rest: 0, description: "Súbete a la bicicleta y pedalea..."),
        Exercise(id: 2, type: .strength, name: "Sentadilla trasera", series: 4, repetitions: 12, weight: 50, duration: 0, rest: 30, description: "Rompiendo el paralelo")
    ]
    
    @State var alertText: String = ""
    @State var showAlertText: Bool = false
    
    var body: some View {
        List {
            ForEach(exercises, id: \.id) { exercise in
                Text(exercise.name)
                    .onTapGesture {
                        var exerciseSummary: ExerciseSummary
                        
                        switch exercise.type {
                        case .strength:
                            exerciseSummary = StrengthExerciseSummaryFactory().getExerciseSummaryFactory()
                        case .cardio:
                            exerciseSummary = CardioExerciseSummaryFactory().getExerciseSummaryFactory()
                        case .sport:
                            //TODO: Implementar factory correcta
                            exerciseSummary = CardioExerciseSummaryFactory().getExerciseSummaryFactory()
                        }
                        
                        alertText = exerciseSummary.getExerciseSummary(exercise: exercise)
                        showAlertText.toggle()
                        
                    }
            }
        }.alert(alertText, isPresented: $showAlertText) {
            Button("OK", role: .cancel) { }
        }
    }
}

struct PureExercisesExampleFactoryMethodView_Previews: PreviewProvider {
    static var previews: some View {
        PureExercisesExampleFactoryMethodView()
    }
}
