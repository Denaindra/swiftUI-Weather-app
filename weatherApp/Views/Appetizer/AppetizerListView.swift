//
//  AppetizerListView.swift
//  weatherApp
//
//  Created by Gayan Perera on 2026-02-28.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel: AppertizerViewModel

    
    init() {
        _viewModel = StateObject(wrappedValue: AppertizerViewModel(service: AppertizerServices()))
    }
    var body: some View {
        NavigationView {
            Group {
                switch viewModel.state {
                case .loading:
                    ProgressView("Loading...")
                case .loaded(let appertizer):
                    List(appertizer) { appertizer in
                       ApertizerListItem(appertizer: appertizer)
                    }
                case .error(let message):
                    Text(message).foregroundColor(.red)
                }
            }
            .navigationTitle("Appetizers")
        }
        .task {
            await  viewModel.LoadAppertizerCollection()
        }
    }
}

#Preview {
    AppetizerListView()
}
