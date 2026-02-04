import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color(red: 0.65, green: 0.85, blue: 1.0), Color.blue],
                   startPoint: .top,
                   endPoint: .bottom)
            .overlay(
                ZStack {
                // Cloud cluster 1
                Group {
                    Ellipse().fill(Color.white.opacity(0.7)).frame(width: 240, height: 120).offset(y: 20)
                    Circle().fill(Color.white.opacity(0.75)).frame(width: 110, height: 110).offset(x: -80, y: -10)
                    Circle().fill(Color.white.opacity(0.75)).frame(width: 120, height: 120).offset(x: 20, y: -25)
                    Circle().fill(Color.white.opacity(0.75)).frame(width: 95, height: 95).offset(x: 95, y: 0)
                }
                .blur(radius: 12)
                .offset(x: -120, y: -220)

                // Cloud cluster 2
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
            
                    VStack {
                        Text("Sri Lanka,Colombo")
                            .font(.system(size: 40, weight: .semibold, design: .default))
                            .foregroundColor(Color.white)
//                            .padding(.top, 20 )
               
//                       Spacer().frame(height: 70)
                        Spacer()
                        VStack (spacing: 5) {
                            Image(systemName: "cloud.sun.fill")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 220, height: 170)
                                .aspectRatio(contentMode: .fit)
                                
                            Text("25°C")
                                .font(.system(size: 30, weight: .semibold, design: .default))
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack (spacing: 25){
                                WeekDayView(day: "MON", weatherIcon: "cloud.sun.rain.fill", temperature: "33°C")
                                WeekDayView(day: "THU", weatherIcon: "cloud.sun.bolt.fill", temperature: "32°C")
                                WeekDayView(day: "WEN", weatherIcon: "cloud.sun.rain.fill", temperature: "31°C")
                                WeekDayView(day: "THR", weatherIcon: "cloud.sun.bolt.fill", temperature: "12°C")
                                WeekDayView(day: "FRI", weatherIcon: "cloud.sun.bolt.fill", temperature: "22°C")
                                WeekDayView(day: "SAT", weatherIcon: "cloud.moon.rain.fill", temperature: "31°C")
                                WeekDayView(day: "SUN", weatherIcon: "cloud.sun.bolt.fill", temperature: "21°C")
                            }
                        } .padding(.horizontal, 10)
                        Spacer()
                        
                        Button(action: {
                            print("button tapped")
                        }){
                           Text("Change Time Of the Day")
                                .frame(width: 280)
                                .font(.system(size: 18, weight: .bold, design: .default))
                                .foregroundColor(Color.blue)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                        }
                     
                        Spacer()
                        
           }
        }
    }
}

#Preview {
    ContentView()
}

