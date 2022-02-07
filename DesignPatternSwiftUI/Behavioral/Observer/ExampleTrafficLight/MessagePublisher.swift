//
//  MessagePublisher.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 7/2/22.
//

import Foundation

class MessagePublisher: Subject {
    
    var observers = [Observer]()
    
    func attach(instance: Observer) {
        observers.append(instance)
    }
    
    func detach(instance: Observer) {
        if let index = observers.firstIndex(where: { $0 as AnyObject === instance as AnyObject }) {
            observers.remove(at: index)
        }
    }
    
    func notifyUpdate(trafficLight: TrafficLight) {
        observers.forEach({ $0.update(trafficLight: trafficLight) })
    }
}
