//
//  ExampleArticleMementoView.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 30/1/22.
//

import SwiftUI

struct ExampleArticleMementoView: View {
    
    func testMemento() {
        let carataker = Carataker()
        var article = ArticleOriginator(id: 1, title: "Memento", text: "Memento es una película...")
        
        carataker.addMemento(memento: article.createMemento())
        
        article.text = "Memento es una película de Nolan, protagonizada por Guy Pearce"
        
        print(article.text)
        
        carataker.addMemento(memento: article.createMemento())
        
        let memento1: ArticleMemento = carataker.getMemento(index: 0)
        let memento2: ArticleMemento = carataker.getMemento(index: 1)
        
        article.restore(memento: memento1)
        print(article.text)
        
        article.restore(memento: memento2)
        print(article.text)
        
        
    }
    
    var body: some View {
        Text("Hello, World!").onAppear {
            testMemento()
        }
    }
}

struct ExampleArticleMementoView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleArticleMementoView()
    }
}
