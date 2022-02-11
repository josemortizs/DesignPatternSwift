//
//  MobileAlertStateContext.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 11/2/22.
//

import Foundation

final class MobileAlertStateContext {
    
    var currentState: MobileAlertState = Sound()
    
    func setState(state: MobileAlertState) {
        currentState = state
    }
    
    func alert() {
        currentState.alert(context: self)
    }
}
