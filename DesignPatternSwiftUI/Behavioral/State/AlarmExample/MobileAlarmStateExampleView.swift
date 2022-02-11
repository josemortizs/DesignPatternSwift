//
//  MobileAlarmStateExampleView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 11/2/22.
//

import SwiftUI

struct MobileAlarmStateExampleView: View {
    
    func testState() {
        let context = MobileAlertStateContext()
        
        context.alert()
        context.alert()
        sleep(2)
        context.setState(state: Vibration())
        context.alert()
        context.alert()
        sleep(2)
        context.setState(state: Silent())
        context.alert()
        context.alert()
    }
    
    var body: some View {
        Text("Hello, World!")
            .onAppear {
                testState()
            }
    }
}

struct MobileAlarmStateExampleView_Previews: PreviewProvider {
    static var previews: some View {
        MobileAlarmStateExampleView()
    }
}
