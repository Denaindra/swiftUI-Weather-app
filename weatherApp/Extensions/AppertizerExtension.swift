//
//  AppertizerExtension.swift
//  weatherApp
//
//  Created by Gayan Perera on 2026-03-06.
//

extension Appetizer {
    func toDomain() -> AppetizerUIModal {
        AppetizerUIModal (
            name: name,
            description: description,
            price: price,
            imageURL: imageURL,
            calories: calories,
            protein: protein,
            carbs: carbs,
        )
    }
}
