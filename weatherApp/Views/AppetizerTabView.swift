//
//  AppetizerTabView.swift
//  weatherApp
//
//  Created by Gayan Perera on 2026-02-28.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
     TabView {
            AppetizerListView()
                .tabItem {
                    Label("Appetizers", systemImage: "house")
                }
            AccountView()
                .tabItem {
                    Label("Main Courses", systemImage: "person")
                }
           OrderView()
             .tabItem {
                 Label("Main Courses", systemImage: "bag")
             }
        }
    }
}

#Preview {
    AppetizerTabView()
}
