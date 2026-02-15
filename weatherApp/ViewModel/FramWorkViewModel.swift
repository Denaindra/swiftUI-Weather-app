//
//  FramWorkViewModel.swift
//  weatherApp
//
//  Created by Gayan Perera on 2026-02-11.
//

import Foundation
import SwiftUI

@MainActor
final class FramWorkViewModel : ObservableObject{
    @Published var isFramworkSelected = false
    
    let columns:[GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
    
    var selectedFrameWorkd: Framework?
    {
        didSet {
            isFramworkSelected = true
        }
    }
    
}
