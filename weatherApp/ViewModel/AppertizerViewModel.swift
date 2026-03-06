//
//  AppertizerViewModel.swift
//  weatherApp
//
//  Created by Gayan Perera on 2026-03-06.
//

import Foundation

@MainActor
final class AppertizerViewModel: ObservableObject {
    
    
@Published private(set) var state: AppertizerViewState = .loading
    
    private let service: AppertizerServiceProtocol

    init(service: AppertizerServiceProtocol) {
        self.service = service
    }

    func LoadAppertizerCollection() async {
        state = .loading
        do {
            let data = try await service.fetchAppertizer()
            state = .loaded(data)
        } catch {
               print(error)  
            state = .error("Unable to load weather")
        }
    }
    
}
