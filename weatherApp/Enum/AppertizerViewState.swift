//
//  AppertizerViewState.swift
//  weatherApp
//
//  Created by Gayan Perera on 2026-03-06.
//

enum AppertizerViewState: Equatable {
    case loading
    case loaded([AppetizerUIModal])
    case error(String)
}
