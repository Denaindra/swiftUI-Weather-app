//
//  AlertItem.swift
//  weatherApp
//
//  Created by Gayan Perera on 2026-03-09.
//

import Foundation
import SwiftUI

//struct AlertItem: Identifiable {
//    let id = UUID()
//    let title: String
//    let message: String
//    let dismissButton: Alert.Button
//}

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
}

enum AlertContext {
    
    // Static Alerts
    static let invalidDeviceInput = AlertItem(
        title: "Invalid Device Input",
        message: "Something went wrong with the camera. We are unable to capture the input."
    )
    
    static let invalidScanType = AlertItem(
        title: "Invalid Scan Type",
        message: "The value scanned is not valid. This app scans EAN-8 and EAN-13."
    )
    
    // Dynamic Alert Factory
    static func networkError(message: String) -> AlertItem {
        AlertItem(
            title: "Network Error",
            message: message
        )
    }
}
