//
//  FramWorkViewModel.swift
//  weatherApp
//
//  Created by Gayan Perera on 2026-02-11.
//

import Foundation

@MainActor
final class FramWorkViewModel : ObservableObject{
    @Published var isFramworkSelected = false

    var selectedFrameWorkd: Framework?
    {
        didSet {
            isFramworkSelected = true
        }
    }
    
}
