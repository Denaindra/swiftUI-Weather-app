import SwiftUI

struct ContentView: View {
    
    @State private var IsDayModeOn: Bool = true
    @StateObject private var viewModel: WeatherViewModel

    init() {
         _viewModel = StateObject(
             wrappedValue: WeatherViewModel(service: WeatherService())
         )
     }

    var body: some View {
        ZStack{
                BackGroundPanel(IsDayModeOn:IsDayModeOn)
            
            
            
                   switch viewModel.state {
                       case .loading:
                           ProgressView("Loading...")

                       case .loaded(let weather):
                               VStack {
                                   Text("Sri Lanka,Colombo")
                                       .font(.system(size: 40, weight: .semibold, design: .default))
                                       .foregroundColor(Color.white)
                                   Spacer()
                                   CurrentWeatherView(IsDayModeOn:IsDayModeOn)
                                   Spacer()
                                   ScrollView(.horizontal, showsIndicators: false) {
                                       HStack (spacing: 25){
                                           ForEach(weather) { weather in
                                               WeekDayView(day:weather.day , weatherIcon: weather.icon, temperature: "\(weather.maxTemp)°C")
                                           }

                                       }
                                   } .padding(.horizontal, 10)
                                   Spacer()
                                   AppButton(IsDayMode: $IsDayModeOn)
                                   Spacer()
                                   
                               }
                       case .error(let message):
                           Text(message).foregroundColor(.red)
                       }
            
            
            
                  
        }
        .task {
                 await viewModel.loadWeather()
             }
    }
}

#Preview {
    ContentView()
}



