import Foundation

struct DailyWeather: Identifiable, Equatable {
    let id = UUID()
    let day: String
    let minTemp: Int
    let maxTemp: Int
    let condition: String
    let icon: String
}


struct AppetizerUIModal: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}
