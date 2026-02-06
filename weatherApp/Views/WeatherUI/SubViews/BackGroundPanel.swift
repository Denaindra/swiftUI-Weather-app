import SwiftUI

struct BackGroundPanel: View {
    
   var IsDayModeOn : Bool
    var body: some View {
        LinearGradient(colors: IsDayModeOn ? [Color(red: 0.65, green: 0.85, blue: 1.0), Color.blue] : [Color(red: 0.1, green: 0.1, blue: 0.3), Color(red: 0.05, green: 0.05, blue: 0.15)], startPoint: .top, endPoint: .bottom)
        .overlay(
            ZStack {
                Group {
                    Ellipse().fill(Color.white.opacity(0.7)).frame(width: 240, height: 120).offset(y: 20)
                    Circle().fill(Color.white.opacity(0.75)).frame(width: 110, height: 110).offset(x: -80, y: -10)
                    Circle().fill(Color.white.opacity(0.75)).frame(width: 120, height: 120).offset(x: 20, y: -25)
                    Circle().fill(Color.white.opacity(0.75)).frame(width: 95, height: 95).offset(x: 95, y: 0)
                }
                .blur(radius: 12)
                .offset(x: -120, y: -220)
                Group {
                    Ellipse().fill(Color.white.opacity(0.7)).frame(width: 260, height: 130).offset(y: 25)
                    Circle().fill(Color.white.opacity(0.75)).frame(width: 120, height: 120).offset(x: -70, y: -10)
                    Circle().fill(Color.white.opacity(0.75)).frame(width: 130, height: 130).offset(x: 30, y: -25)
                    Circle().fill(Color.white.opacity(0.75)).frame(width: 100, height: 100).offset(x: 115, y: -5)
                }
                .blur(radius: 14)
                .offset(x: 110, y: -160)
            }
        )
        .ignoresSafeArea(.all)
    }
}

#Preview {

}

