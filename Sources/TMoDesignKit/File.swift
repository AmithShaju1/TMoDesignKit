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

