//
//  TransactionModel.swift
//  ExpenseTracker
//
//  Created by Jeffrey Pettit on 4/13/23.
//

import Foundation

struct Transaction: Identifiable {
    let id: Int
    let date: String
    let institution: String
    let account: String
    var merchant: String
    let amount: Double
    let type: TransactionType.RawValue
    var categoryId: Int
    var category: String
    let isPending: Bool
    var isTransfer: Bool
    var isExpense: Bool
    var isEdited: Bool
    
    // Date parsing functionality
    var dateParsed: Date {
        date.dateParsed()
    }
    
    // Ternary function which displays the amount as negative if its a debit
    var signedAmount: Double {
        return type == TransactionType.credit.rawValue ? amount : -amount
    }
}

enum TransactionType: String {
    case debit = "debit"
    case credit = "credit"
}
