
import SwiftUI


struct FramWorkGridView: View {
    
    @StateObject private var framworkViewModel = FramWorkViewModel()
    
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVGrid(columns: framworkViewModel.columns) {
                    ForEach(MockData.frameworks) { frameWorkItem in
                        NavigationLink(value: frameWorkItem){
                            GridItemView(frameWorkItem: frameWorkItem)
                        }
                    }
                }
            }
            .padding(.horizontal)
            .padding(.bottom)
            .navigationDestination(for: Framework.self) { frameWorkItem in
                FramWorkDetailView(frameWorkItem: frameWorkItem)
            }
            .navigationTitle("🍎 UI Frameworks")

        }
       
    }
}

#Preview {
    FramWorkGridView()
}

