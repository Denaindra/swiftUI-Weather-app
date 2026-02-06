import Foundation

// MARK: - API Response

struct WeatherAPIResponse: Decodable {
    let status: String
    let location: LocationDTO
    let unit: String
    let forecast: [ForecastDTO]
}

struct LocationDTO: Decodable {
    let city: String
    let country: String
    let latitude: Double
    let longitude: Double
}

struct ForecastDTO: Decodable {
    let day: String
    let date: String
    let temperature: TemperatureDTO
    let weather: String
}

struct TemperatureDTO: Decodable {
    let min: Int
    let max: Int
}

