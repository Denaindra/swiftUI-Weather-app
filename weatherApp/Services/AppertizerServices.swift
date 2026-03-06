//
//  AppertizerServices.swift
//  weatherApp
//
//  Created by Gayan Perera on 2026-03-06.
//

import Foundation
final class AppertizerServices: AppertizerServiceProtocol {
    
    private let url = URL(string: "https://appertizer.free.beeceptor.com/getAppertizer")!

    func fetchAppertizer() async throws -> [AppetizerUIModal] {
        let (data, _) = try await URLSession.shared.data(from: url)
        let response = try JSONDecoder().decode(AppetizerAPIResponse.self, from: data)
                
        return response.request.map {$0.toDomain()}
    }

}
