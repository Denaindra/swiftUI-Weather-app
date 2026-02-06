protocol WeatherServiceProtocol {
    func fetchWeeklyWeather() async throws -> [DailyWeather]
}

