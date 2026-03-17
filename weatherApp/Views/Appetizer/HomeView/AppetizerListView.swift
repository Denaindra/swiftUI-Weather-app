import SwiftUI

struct AppetizerListView: View {

    @StateObject private var viewModel = AppertizerViewModel(service: AppertizerServices())
    @State private var selectedAppetizer: AppetizerUIModal?

    var body: some View {
        NavigationView {
            ZStack {
                Group{
                    if(viewModel.isLoading){
                        ProgressView("Loading...")
                    }
                    else{
                        List(viewModel.appetizer) { appetizer in
                         ApertizerListItem(appertizer: appetizer)
                                .onTapGesture {
                                    withAnimation(.easeInOut) {
                                        selectedAppetizer = appetizer
                                    }
                                }
                        }
                    }
                }
                .blur(radius: selectedAppetizer == nil ? 0 : 4)

                if let selectedAppetizer {
                    AppetizerDetailOverlayView(appetizer: selectedAppetizer) {
                        withAnimation(.easeInOut) {
                            self.selectedAppetizer = nil
                        }
                    }
                    .transition(.opacity.combined(with: .scale))
                }
            }
            .navigationTitle("Appetizers")
        }
        .task {
            await viewModel.LoadAppertizerCollection()
        }
        .alert(item: $viewModel.alertItem) { item in
            Alert(
                title: Text(item.title),
                message: Text(item.message),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}
