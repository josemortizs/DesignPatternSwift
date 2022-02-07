//
//  ObserverPatternExampleSemaphore.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 7/2/22.
//

import SwiftUI

struct ObserverPatternExampleSemaphore: View {
    
    func testObserver() {
        
        let car = Car()
        let pedestrian = Pedestrian()
        let messagePublisher = MessagePublisher()
        var trafficLight = TrafficLight(status: "CAR_GREEN")
        
        messagePublisher.attach(instance: car)
        messagePublisher.attach(instance: pedestrian)
        
        messagePublisher.notifyUpdate(trafficLight: trafficLight)
        
        sleep(3)
        
        trafficLight.status = "CAR_RED"
        messagePublisher.notifyUpdate(trafficLight: trafficLight)

    }
    
    var body: some View {
        Text("Hello, World!")
            .onAppear {
                testObserver()
            }
    }
}

struct ObserverPatternExampleSemaphore_Previews: PreviewProvider {
    static var previews: some View {
        ObserverPatternExampleSemaphore()
    }
}
