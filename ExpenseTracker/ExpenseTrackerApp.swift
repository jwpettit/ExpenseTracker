//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Jeffrey Pettit on 4/13/23.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
