import SwiftUI


struct CurrentWeatherView: View {
    var IsDayModeOn : Bool
    var body: some View {
        VStack (spacing: 5) {
            Image(systemName: IsDayModeOn ? "cloud.sun.fill" : "cloud.moon.fill")
                .renderingMode(.original)
                .resizable()
                .frame(width: 220, height: 170)
                .aspectRatio(contentMode: .fit)
            
            Text("25°C")
                .font(.system(size: 30, weight: .semibold, design: .default))
                .foregroundColor(Color.white)
        }
    }
}

#Preview {
   
}
