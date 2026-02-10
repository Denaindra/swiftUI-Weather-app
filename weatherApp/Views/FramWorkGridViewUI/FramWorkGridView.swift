
import SwiftUI


struct FramWorkGridView: View {
    
    let columns:[GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
                ScrollView{
                    LazyVGrid(columns: columns) {
                        ForEach(MockData.frameworks) { frameWorkItem in
                            GridItemView(frameWorkItem: frameWorkItem)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                }
           .navigationTitle("🍎 UI Frameworks")
           .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    FramWorkGridView()
}

