//
//  AppetizerListView.swift
//  weatherApp
//
//  Created by Gayan Perera on 2026-02-28.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
//            Text("This is Appertizer view")
//            .navigationTitle("Appertizer")
            
            List(MockData.orderItems) { appertizer in
                HStack{
                    Image("asian-flank-steak")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 90)
                        .cornerRadius(8)
                        
                    VStack(alignment: .leading, spacing: 5){
                        Text(appertizer.name)
                            .font(.headline)
                        Text("$\(appertizer.price, specifier: "%.2f")")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
        }
      
    }
}

#Preview {
    AppetizerListView()
}
