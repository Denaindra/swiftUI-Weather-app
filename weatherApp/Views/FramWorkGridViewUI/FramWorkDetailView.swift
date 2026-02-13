import SwiftUI

struct FramWorkDetailView: View {
    let frameWorkItem:Framework
    @Binding var isFramworkSelected:Bool
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button(action: {
                    isFramworkSelected.toggle()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color.black)
                        .imageScale(Image.Scale.large)
                        .frame(width: 40,height: 40)
                    
                })
                .padding()
            }

            Spacer()
            GridItemView(frameWorkItem: frameWorkItem)
            Text(frameWorkItem.description)
                .font(.body)
                .padding()
            Spacer()
            
            FrameWorkDetailButton(urlString: frameWorkItem.urlString)
        }
    }
}

#Preview {
    FramWorkDetailView(frameWorkItem: MockData.sampleFramework, isFramworkSelected: .constant(true))
}


