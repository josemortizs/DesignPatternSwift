//
//  AccountComposite.swift
//  DesignPatternSwiftUI
//
//  Created by Jose Manuel Ortiz Sanchez on 14/2/22.
//

import Foundation

class AccountComposite: AccountComponent {
    
    var childAccounts = [AccountComponent]()
    
    func addAccount(account: AccountComponent) {
        childAccounts.append(account)
    }
    
    func removeAccount(account: AccountComponent) {
        // solo como ejemplo de lo que podríamos encontrarnos
    }
    
    func showAccountName() {
        childAccounts.forEach { $0.showAccountName() }
    }
}
