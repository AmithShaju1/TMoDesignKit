import SwiftUI

public struct TMoDesignKit {
    @available(iOS 15.0, *)
    
    
    public struct NewCardView: View {
        @State var credit : Credit
        public var body: some View {
            ZStack {
                Label("", systemImage: "")
                    .frame(width: 600, height: 400, alignment: .center)
                    .border(Color.pink, width: 3)
                //.background().shadow(color: .red, radius: 20, x: 10, y: 10)
                VStack(alignment: .center, spacing: 20) {
                    HStack(alignment: .top) {
                        //                        Button("Close") {
                        //                            print("Close button pressed")
                        //                        }
                        Text("Promo 2020 Apple Trade")
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                        
                        
                    }
                    Label("", systemImage: "")
                        .frame(width: 500, height: 2, alignment: .center)
                        .background(.gray)
                    HStack() {
                        
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("Status")
                                .bold()
                            Text("closed")
                        }
                        .frame(width: 250, height: 50, alignment: .leading)
                        
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("Monthly Bill Credit")
                                .bold()
                            Text("$50")
                        }
                        .frame(width: 250, height: 50, alignment: .leading)
                        
                    }
                    Label("", systemImage: "")
                        .frame(width: 500, height: 2, alignment: .center)
                        .background(.gray)
                    HStack() {
                        
                        VStack(alignment: .leading, spacing: 20.0) {
                            HStack {
                                Text("Credit Balance")
                                Text("$8")
                                    .bold()
                            }
                            HStack {
                                Text("Start Date")
                                Text("1/2/22")
                                    .bold()
                            }
                            HStack {
                                Text(" Duration")
                                Text("4 of 7")
                                    .bold()
                            }
                        }.frame(width: 250, height: 50, alignment: .leading)
                        
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("Promo Balance")
                                .bold()
                            HStack {
                                Text("Initial Credit Balance")
                                Text("$7")
                                
                            }
                            
                            HStack {
                                Text("Remaining Credit")
                                Text("$9")
                                
                            }
                            Label("", systemImage: "")
                                .frame(width: 250, height: 2, alignment: .center)
                                .background(.gray)
                            HStack {
                                Text("Total Credited Amount")
                                Text("$0")
                                
                            }
                        }
                        
                    }
                }
                
            }
        }
        public init(credit:Credit) {
            self._credit = State(initialValue: credit)
        }
    }
    
    public struct CardView: View {
        @State var credit : Credit
        public var body: some View {
            ZStack {
                Label("", systemImage: "")
                    .frame(width: 600, height: 400, alignment: .center)
                    .border(Color.red, width: 3)
                //.background().shadow(color: .red, radius: 20, x: 10, y: 10)
                VStack(alignment: .center) {
                    HStack(alignment: .top, spacing: 50.0) {
                        //                        Button("Close") {
                        //                            print("Close button pressed")
                        //                        }
                        Text("Promo 2020 Apple Trade")
                            .multilineTextAlignment(.center)
                        
                        
                    }
                    if #available(iOS 15.0, *) {
                        Label("", systemImage: "")
                            .frame(width: 400, height: 2, alignment: .center)
                            .background(.gray)
                    } else {
                        // Fallback on earlier versions
                    }
                    HStack(spacing: 100.0) {
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("Status")
                                .bold()
                            Text(credit.status)
                        }
                        
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("Monthly Bill Credit")
                                .bold()
                            Text("$\(credit.monthlyBillCredit)")
                        }
                    }
                    if #available(iOS 15.0, *) {
                        Label("", systemImage: "")
                            .frame(width: 400, height: 2, alignment: .center)
                            .background(.gray)
                    } else {
                        // Fallback on earlier versions
                    }
                    HStack(spacing: 50.0) {
                        VStack(alignment: .leading, spacing: 20.0) {
                            HStack {
                                Text("Credit Balance")
                                Text("$\(credit.creditBalance)")
                                    .bold()
                            }
                            HStack {
                                Text("Start Date")
                                Text("1/2/22")
                                    .bold()
                            }
                            HStack {
                                Text(" Duration")
                                Text(credit.duration)
                                    .bold()
                            }
                        }
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("Promo Balance")
                                .bold()
                            HStack {
                                Text("Initial Credit Balance")
                                Text("$\(credit.promoBalance.initialCreditBalance)")
                                
                            }
                            
                            HStack {
                                Text("Remaining Credit")
                                Text("$\(credit.promoBalance.remainingCredit)")
                                
                            }
                            if #available(iOS 15.0, *) {
                                Label("", systemImage: "")
                                    .frame(width: 200, height: 2, alignment: .center)
                                    .background(.gray)
                            } else {
                                // Fallback on earlier versions
                            }
                            HStack {
                                Text("Total Credited Amount")
                                Text("$\(credit.promoBalance.totalCreditAmount)")
                                
                            }
                        }
                    }
                }
                
            }
            
            
        }
        public init(credit:Credit) {
            self._credit = State(initialValue: credit)
        }
    }
    
    public struct AppleCardView: View {
        @State var cardTitle: String
        @State var credit : Credit
        //        @State var status: String?
        public var body: some View {
            //        GeometryReader { proxy in
            //        Text("RMS App")
            //
            //        TMoDesignKit.CardView()
            
            VStack {
                
                Label(cardTitle, systemImage: "")
                    .frame(width: 400, height: 100, alignment: .center)
                    .font(.system(size: 30,weight: .bold))
                Form {
                    
                    Section {
                        
                        CellView(key: "Status",value: credit.status)
                        CellView(key: "Monthly Bill Credit",value: "$\(String(describing: credit.monthlyBillCredit))")
                        CellView(key: "Credit Balance",value: "$\(String(describing: credit.creditBalance))")
                        //                        CellView(key: "Start Date",value: credit.startDate)
                        CellView(key: "Duration",value: credit.duration)
                    }
                    Section(header: Text("Promo Balance")) {
                        CellView(key: "Initial Credit Balance",value: "$\(String(describing: credit.promoBalance.initialCreditBalance))")
                        CellView(key: "Remaining Credit",value: "$\(String(describing: credit.promoBalance.remainingCredit))")
                        CellView(key: "Total Credited Amount",value: "$\(String(describing: credit.promoBalance.totalCreditAmount))")
                        
                    }
                    
                    
                }
                Button("Close") {}
                    .foregroundColor(.red)
                Spacer()
            }
            
            
            //        }
        }
        public init(cardTitle:String, credit:Credit) {
            self._cardTitle = State(initialValue: cardTitle)
            self._credit = State(initialValue: credit)
        }
        //        public init(cardTitle:String, status:Binding<String>) {
        //            self._cardTitle = State(initialValue: cardTitle)
        //            self._status = status
        //        }
    }
    
    public struct Credit {
        enum Status : String {
            case new = "New"
            case processing = "Processing"
            case approved = "Active"
            case closed = "Closed"
        }
        public var status : String
        public var monthlyBillCredit : Int
        public var creditBalance : Int
        public var startDate : Date?
        public var duration : String
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
        public var initialCreditBalance : Int
        public var remainingCredit : Int
        public var totalCreditAmount : Int
        
        public init(initialCreditBalance: Int, remainingCredit: Int, totalCreditAmount: Int) {
            self.initialCreditBalance = initialCreditBalance
            self.remainingCredit = remainingCredit
            self.totalCreditAmount = totalCreditAmount
        }
    }
    
    
}
