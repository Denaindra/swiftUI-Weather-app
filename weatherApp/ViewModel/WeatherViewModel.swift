import Foundation

@MainActor
final class WeatherViewModel: ObservableObject {

    @Published private(set) var state: WeatherViewState = .loading

    private let service: WeatherServiceProtocol

    init(service: WeatherServiceProtocol) {
        self.service = service
    }

    func loadWeather() async {
        state = .loading
        do {
            let data = try await service.fetchWeeklyWeather()
            state = .loaded(data)
        } catch {
            state = .error("Unable to load weather")
        }
    }
}
