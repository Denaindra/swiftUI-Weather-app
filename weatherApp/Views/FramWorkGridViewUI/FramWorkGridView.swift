
import SwiftUI


struct FramWorkGridView: View {
    
    @StateObject private var framworkViewModel = FramWorkViewModel()
    
    
    var body: some View {
        NavigationView {
            //  ScrollView{
            List (MockData.frameworks, id: \.self) { frameWorkItem in
                // ForEach(MockData.frameworks) { frameWorkItem in
                
                NavigationLink(destination: FramWorkDetailView(frameWorkItem:frameWorkItem,
                     isFramworkSelected: $framworkViewModel.isFramworkSelected)) {
                    GridItemView(frameWorkItem: frameWorkItem)
                    
                }
                
                //                        .onTapGesture {
                //                            framworkViewModel.selectedFrameWorkd = frameWorkItem
                //                        }
                //  }
            }
            //            .padding(.horizontal)
            //            .padding(.bottom)
            //                }
            .navigationTitle("🍎 UI Frameworks")
            //            .sheet(isPresented: $framworkViewModel.isFramworkSelected, content: {
            //                FramWorkDetailView(frameWorkItem: framworkViewModel.selectedFrameWorkd ?? MockData.sampleFramework,
            //                                   isFramworkSelected: $framworkViewModel.isFramworkSelected)
            //            })
        }
    }
}

#Preview {
    FramWorkGridView()
}

