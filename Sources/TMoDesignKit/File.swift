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
    public var status : String?
    public var monthlyBillCredit : Int?
    public var creditBalance : Int?
    public var startDate : Date?
    public var duration : String?
    public var promoBalance : PromoBalance
    
    public init() {
        status = Status.new.rawValue
        monthlyBillCredit = 0
        creditBalance = 0
        startDate = Date()
        duration = "Not Decided"
        promoBalance = PromoBalance(initialCreditBalance: 0, remainingCredit: 0, totalCreditAmount: 0)
        
    }
}

public struct PromoBalance {
    public var initialCreditBalance : Int?
    public var remainingCredit : Int?
    public var totalCreditAmount : Int?
    
    public init(initialCreditBalance: Int, remainingCredit: Int, totalCreditAmount: Int) {
        self.initialCreditBalance = initialCreditBalance
        self.remainingCredit = remainingCredit
        self.totalCreditAmount = totalCreditAmount
    }
}
