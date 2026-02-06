enum WeatherViewState: Equatable {
    case loading
    case loaded([DailyWeather])
    case error(String)
}
