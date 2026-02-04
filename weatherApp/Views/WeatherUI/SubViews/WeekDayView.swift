import SwiftUI

struct WeekDayView: View {
    var day: String
    var weatherIcon : String
    var temperature: String
    
    var body: some View {
        VStack (alignment: .center, spacing: 0)   {
            Text(day)
                .font(.system(size: 18, weight: .semibold, design: .default))
                .foregroundColor(Color.white)
            Image(systemName: weatherIcon)
                .renderingMode(.original)
                .resizable()
                .frame(width: 45, height: 50)
            
            Text(temperature)
                .font(.system(size: 18, weight: .semibold, design: .default))
                .foregroundColor(Color.white)
        }
    }
}
