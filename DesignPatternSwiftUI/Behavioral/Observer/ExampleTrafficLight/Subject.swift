//
//  Subject.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 7/2/22.
//

import Foundation

protocol Subject {
    func attach(instance: Observer)
    func detach(instance: Observer)
    func notifyUpdate(trafficLight: TrafficLight)
}
