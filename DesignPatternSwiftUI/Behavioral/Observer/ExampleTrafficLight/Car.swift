//
//  Car.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 7/2/22.
//

import Foundation

final class Car: Observer {
    func update(trafficLight: TrafficLight) {
        if trafficLight.status as AnyObject === "CAR_RED" as AnyObject {
            print("Semáforo en rojo, no puedes pasar: COCHE")
        } else {
            print("Semáforo en verde, puedes pasar: COCHE")
        }
    }
}
