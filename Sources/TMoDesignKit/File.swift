//
//  File.swift
//  
//
//  Created by Amith Shaju on 20/07/22.
//

import SwiftUI
struct CellView: View {
    var key: String
    var value: String?
    var body: some View {
        HStack {
            Text(key)
            Spacer()
            Text(value ?? "")
                .foregroundColor(.gray)
            
        }
    }
}

public class Credit {
    enum Status : String {
        case new = "New"
        case processing = "Processing"
        case approved = "Active"
        case closed = "Closed"
    }
    var status : String?
    var monthlyBillCredit : Int?
    var creditBalance : Int?
    var startDate : Date?
    var duration : String?
    var promoBalance : PromoBalance
    
    init() {
        status = Status.new.rawValue
        monthlyBillCredit = 0
        creditBalance = 0
        startDate = Date()
        duration = "Not Decided"
        promoBalance = PromoBalance(initialCreditBalance: 0, remainingCredit: 0, totalCreditAmount: 0)
        
    }
}

struct PromoBalance {
    var initialCreditBalance : Int?
    var remainingCredit : Int?
    var totalCreditAmount : Int?
}
