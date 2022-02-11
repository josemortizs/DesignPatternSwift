//
//  Silent.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 11/2/22.
//

import Foundation

final class Silent: MobileAlertState {
    func alert(context: MobileAlertStateContext) {
        print("El teléfono está en silencio")
    }
}
