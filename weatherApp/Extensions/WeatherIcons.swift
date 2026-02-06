extension ForecastDTO {
    func toDomain() -> DailyWeather {
        DailyWeather(
            day: day,
            minTemp: temperature.min,
            maxTemp: temperature.max,
            condition: weather,
            icon: weather.systemImage
        )
    }
}

extension String {
    var systemImage: String {
        switch self {
        case "Sunny": return "sun.max.fill"
        case "Cloudy": return "cloud.fill"
        case "Partly Cloudy": return "cloud.sun.fill"
        case "Rain Showers": return "cloud.rain.fill"
        case "Thunderstorms": return "cloud.bolt.rain.fill"
        default: return "questionmark"
        }
    }
}
