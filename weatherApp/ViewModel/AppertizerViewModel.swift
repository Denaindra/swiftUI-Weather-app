//
//  AppertizerViewModel.swift
//  weatherApp
//
//  Created by Gayan Perera on 2026-03-06.
//

import Foundation

@MainActor
final class AppertizerViewModel: ObservableObject {
    
    @Published var alertItem: AlertItem? 
    @Published  var appetizer: [AppetizerUIModal] = []
    @Published var isLoading: Bool = false
    
    private let service: AppertizerServiceProtocol

    
    init(service: AppertizerServiceProtocol) {
        self.service = service
    }

    func LoadAppertizerCollection() async {
        isLoading = true
        do {
            let data = try await service.fetchAppertizer()
            self.appetizer = data
            isLoading = false
        } catch {
            isLoading = false
            self.alertItem = AlertContext.networkError(message: "Unable to load weather")
        }
    }
    
}
