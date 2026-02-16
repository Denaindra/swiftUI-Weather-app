import SwiftUI

struct FramWorkDetailView: View {
    let frameWorkItem:Framework    
    var body: some View {
        VStack{
            GridItemView(frameWorkItem: frameWorkItem)
            Text(frameWorkItem.description)
                .font(.body)
                .padding()
            Spacer()
            
            FrameWorkDetailButton(urlString: frameWorkItem.urlString)
        }
        .navigationTitle(frameWorkItem.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    FramWorkDetailView(frameWorkItem: MockData.sampleFramework)
}


