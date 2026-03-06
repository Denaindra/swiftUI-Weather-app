//
//  AppertizerServiceProtocol.swift
//  weatherApp
//
//  Created by Gayan Perera on 2026-03-06.
//

protocol AppertizerServiceProtocol {
    func fetchAppertizer() async throws -> [AppetizerUIModal]
}

