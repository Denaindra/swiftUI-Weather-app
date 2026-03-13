//
//  ApertizerListItem.swift
//  weatherApp
//
//  Created by Gayan Perera on 2026-03-06.
//

import SwiftUI

struct ApertizerListItem: View {
    let appertizer: AppetizerUIModal

    var body: some View {
        HStack{
                AsyncImage(url: URL(string: appertizer.imageURL)) { phase in
                    switch phase {
                    case .empty:
                        Image("food-placeholder")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    case .success(let image):
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    case .failure:
                        Image(systemName: "photo")
                            .foregroundColor(.gray)
                    @unknown default:
                        EmptyView()
                    }
                }
                .frame(width: 120, height: 90)
                .clipped()
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

#Preview {
   // ApertizerListItem()
}
