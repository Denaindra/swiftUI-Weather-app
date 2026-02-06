import Foundation
final class WeatherService: WeatherServiceProtocol {

    private let url = URL(string: "https://myweather.free.beeceptor.com/getWeather")!

    func fetchWeeklyWeather() async throws -> [DailyWeather] {
        let (data, _) = try await URLSession.shared.data(from: url)
        let response = try JSONDecoder().decode(WeatherAPIResponse.self, from: data)

        return response.forecast.map { $0.toDomain() }
    }
}
