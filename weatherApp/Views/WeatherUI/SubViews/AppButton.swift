import SwiftUI


struct AppButton: View {
    @Binding var IsDayMode: Bool
    
    var body: some View {
        Button(action: {
            IsDayMode.toggle()
       
        }){
            Text("Change Time Of the Day")
                .frame(width: 280)
                .font(.system(size: 18, weight: .bold, design: .default))
                .foregroundColor(Color.blue)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
        }
    }
}
