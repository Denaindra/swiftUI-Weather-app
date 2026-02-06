import Foundation

struct DailyWeather: Identifiable, Equatable {
    let id = UUID()
    let day: String
    let minTemp: Int
    let maxTemp: Int
    let condition: String
    let icon: String
}
