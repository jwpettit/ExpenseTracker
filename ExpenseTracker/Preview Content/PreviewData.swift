//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by Jeffrey Pettit on 4/13/23.
//

import Foundation

var transactionPreviewData = Transaction(
    id: 1,
    date: "04/13/2023",
    institution: "Spuerkeess",
    account: "Visa Spuerkeess",
    merchant: "Apple",
    amount: 27.43,
    type: "debit",
    categoryId: 801,
    category: "Software",
    isPending: false,
    isTransfer: false,
    isExpense: true,
    isEdited: false
)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
