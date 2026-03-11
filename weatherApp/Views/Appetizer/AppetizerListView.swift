import SwiftUI

struct AppetizerListView: View {

    @StateObject private var viewModel = AppertizerViewModel(service: AppertizerServices())

    var body: some View {
        NavigationView {
            Group{
                if(viewModel.isLoading){
                    ProgressView("Loading...")
                }
                else{
                    List(viewModel.appetizer) { appetizer in
                     ApertizerListItem(appertizer: appetizer)
                    }
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
