import SwiftUI
public var magentaTMo = Color(CGColor.init(red: 208/255, green: 44/255, blue: 115/255, alpha: 1.0))
public struct TMoDesignKit {
   
    @available(iOS 15.0, *)
    
    public struct ButtonView: View {
        @State var title : String
        public var body: some View {
            Button(title) {
                
                //Todo : Add voiceover when tapped
            }
            
            .frame(width: 160, height: 40, alignment: .center)
            .background(.purple)
            .cornerRadius(5.0)
            //.font(.largeTitle)
            .foregroundColor(.white)
            
        }
        public init(title:String) {
            self._title = State(initialValue: title)
        }
    }
    
    public struct IconView: View {
        @State var title : String
        @State var buttonAction :  () -> Void
        public var body: some View {
            if #available(iOS 15.0, *) {
                Button(action: buttonAction) {
                    Image(systemName: title)
                        .resizable()
                    
                        .padding(10)
                        .foregroundColor(.purple)
                }
                .frame(width: 60,height: 60,alignment: .center)
            } else {
                // Fallback on earlier versions
            }
            
        }
        public init(title:String, buttonAction: @escaping () -> Void) {
            self._title = State(initialValue: title)
            self._buttonAction = State(initialValue: buttonAction)
        }
    }
    
    public struct CardView: View {
        @State var credit : Credit
        
        public var body: some View {
            ZStack {
                Label("", systemImage: "")
                    .frame(width: 600, height: 400, alignment: .center)
                    .border(magentaTMo, width: 3)
                    .cornerRadius(10)
                //.background().shadow(color: .red, radius: 20, x: 10, y: 10)
                VStack(alignment: .center, spacing: 20) {
                    Image(systemName: "house")
                        .accessibilityLabel("Home Sweet Home")
                    HStack(alignment: .top) {
                        Text("Promo 2020 Apple Trade")
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                        
                        
                    }
                    if #available(iOS 15.0, *) {
                        Label("", systemImage: "")
                            .frame(width: 500, height: 2, alignment: .center)
                            .background(.gray)
                    } else {
                        // Fallback on earlier versions
                    }
                    HStack() {
                        
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("Status")
                                .bold()
                            Text(credit.status)
                        }
                        .frame(width: 250, height: 50, alignment: .leading)
                        
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("Monthly Bill Credit")
                                .bold()
                            Text("$\(credit.monthlyBillCredit)")
                        }
                        .frame(width: 250, height: 50, alignment: .leading)
                        
                    }
                    if #available(iOS 15.0, *) {
                        Label("", systemImage: "")
                            .frame(width: 500, height: 2, alignment: .center)
                            .background(.gray)
                    } else {
                        // Fallback on earlier versions
                    }
                    HStack() {
                        
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
                        }.frame(width: 250, height: 50, alignment: .leading)
                        
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
                                    .frame(width: 250, height: 2, alignment: .center)
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
    
    public struct NewCardView: View {
        @State var credit : Credit
        
        public var body: some View {
            ZStack {
                Label("", systemImage: "")
                    .frame(width: 600, height: 400, alignment: .center)
                    .border(magentaTMo, width: 3)
                    .cornerRadius(10)
                //.background().shadow(color: .red, radius: 20, x: 10, y: 10)
                VStack(alignment: .center, spacing: 20) {
                    Image(systemName: "house")
                        .accessibilityLabel("Home Sweet Home")
                    HStack(alignment: .top) {
                        Text("Promo 2020 Apple Trade")
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                        
                        
                    }
                    if #available(iOS 15.0, *) {
                        Label("", systemImage: "")
                            .frame(width: 500, height: 2, alignment: .center)
                            .background(.gray)
                    } else {
                        // Fallback on earlier versions
                    }
                    HStack() {
                        
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("Status")
                                .bold()
                            Text(credit.status)
                        }
                        .frame(width: 250, height: 50, alignment: .leading)
                        
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("Monthly Bill Credit")
                                .bold()
                            Text("$\(credit.monthlyBillCredit)")
                        }
                        .frame(width: 250, height: 50, alignment: .leading)
                        
                    }
                    if #available(iOS 15.0, *) {
                        Label("", systemImage: "")
                            .frame(width: 500, height: 2, alignment: .center)
                            .background(.gray)
                    } else {
                        // Fallback on earlier versions
                    }
                    HStack() {
                        
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
                        }.frame(width: 250, height: 50, alignment: .leading)
                        
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
                                    .frame(width: 250, height: 2, alignment: .center)
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
    
    
    public struct OldCardView: View {
        @State var credit : Credit
        public var body: some View {
            ZStack {
                Label("", systemImage: "")
                    .frame(width: 600, height: 400, alignment: .center)
                    .border(magentaTMo, width: 3)
                    .cornerRadius(10)
                //.background().shadow(color: .red, radius: 20, x: 10, y: 10)
                VStack(alignment: .center, spacing: 20) {
                    Image(systemName: "house")
                        .accessibilityLabel("Home Sweet Home")
                    HStack(alignment: .top) {
                        Text("Promo 2020 Apple Trade")
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                        
                        
                    }
                    if #available(iOS 15.0, *) {
                        Label("", systemImage: "")
                            .frame(width: 500, height: 2, alignment: .center)
                            .background(.gray)
                    } else {
                        // Fallback on earlier versions
                    }
                    HStack() {
                        
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("Status")
                                .bold()
                            Text(credit.status)
                        }
                        .frame(width: 250, height: 50, alignment: .leading)
                        
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("Monthly Bill Credit")
                                .bold()
                            Text("$\(credit.monthlyBillCredit)")
                        }
                        .frame(width: 250, height: 50, alignment: .leading)
                        
                    }
                    if #available(iOS 15.0, *) {
                        Label("", systemImage: "")
                            .frame(width: 500, height: 2, alignment: .center)
                            .background(.gray)
                    } else {
                        // Fallback on earlier versions
                    }
                    HStack() {
                        
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
                        }.frame(width: 250, height: 50, alignment: .leading)
                        
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
                                    .frame(width: 250, height: 2, alignment: .center)
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
                    .font(.system(size: 20,weight: .bold))
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
    
    public struct TMoTableView: View {
        @State var cardTitle: String
        @State var data : [newDict]
//        @State var rows : Int
        
        public var body: some View {
           
            VStack {
                
                Label(cardTitle, systemImage: "")
                    .font(.system(size: 20,weight: .bold))
                
               
                
            }
            
            
            //        }
        }
        public init(cardTitle:String, data:[newDict]) {
            self._cardTitle = State(initialValue: cardTitle)
            self._data = State(initialValue: data)
            //self._rows = State(initialValue: rows)
        }
      
    }
    
    public struct newDict: Identifiable {
        var key: String
        var value: String
        public var id: String { key }
        
        public init(key: String, value: String) {
            self.key = key
            self.value = value
        }
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
