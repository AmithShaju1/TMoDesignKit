import SwiftUI

public struct TMoDesignKit {
    @available(iOS 15.0, *)
    public struct CardView: View {
        public var body: some View {
            ZStack {
                Label("", systemImage: "")
                    .frame(width: 600, height: 400, alignment: .center)
                    .background().shadow(color: .red, radius: 20, x: 10, y: 10)
                VStack(alignment: .center) {
                    HStack(alignment: .top, spacing: 50.0) {
                        Button("Close") {
                            print("Close button pressed")
                        }
                        Text("Promo 2020 Apple Trade")
                            .multilineTextAlignment(.leading)
                            
                            
                    }
                    Label("", systemImage: "")
                        .frame(width: 400, height: 2, alignment: .center)
                        .background(.gray)
                    HStack(spacing: 100.0) {
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("Status")
                                .bold()
                            Text("Active - Apply_Credit")
                        }
                        
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("Monthly Bill Credit")
                                .bold()
                            Text("$5")
                        }
                    }
                    Label("", systemImage: "")
                        .frame(width: 400, height: 2, alignment: .center)
                        .background(.gray)
                    HStack(spacing: 50.0) {
                        VStack(alignment: .leading, spacing: 20.0) {
                            HStack {
                                Text("Credit Balance")
                                Text("$122")
                                    .bold()
                            }
                            HStack {
                                Text("Start Date")
                                Text("1/2/22")
                                    .bold()
                            }
                            HStack {
                                Text(" Duration")
                                Text("5 of 22")
                                    .bold()
                            }
                        }
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("Promo Balance")
                                .bold()
                            HStack {
                                Text("Initial Credit Balance")
                                Text("$222")
                                   
                            }
                            
                            HStack {
                                Text("Remaining Credit")
                                Text("$44")
                                   
                            }
                            Label("", systemImage: "")
                                .frame(width: 200, height: 2, alignment: .center)
                                .background(.gray)
                            HStack {
                                Text("Total Credited Amount")
                                Text("$24")
                                   
                            }
                        }
                    }
                }
               
            }
            
            
        }
        public init() {
        }
    }
    
}
