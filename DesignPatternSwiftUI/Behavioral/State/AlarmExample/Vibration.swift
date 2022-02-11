//
//  Vibration.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 11/2/22.
//

import Foundation

final class Vibration: MobileAlertState {
    func alert(context: MobileAlertStateContext) {
        print("El teléfono está vibrando")
    }
}
