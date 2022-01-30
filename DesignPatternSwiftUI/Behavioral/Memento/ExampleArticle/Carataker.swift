//
//  Carataker.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 30/1/22.
//

import Foundation

final class Carataker {
    private var estados = [ArticleMemento]()
    
    func addMemento(memento: ArticleMemento) {
        estados.append(memento)
    }
    
    func getMemento(index: Int) -> ArticleMemento {
        return estados[index]
    }
}
