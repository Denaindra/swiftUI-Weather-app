//
//  CameraBarCodeReader.swift
//  weatherApp
//
//  Created by Gayan Perera on 2026-02-16.
//

import SwiftUI

struct CameraBarCodeReader: View {
    @StateObject var viewModel = BarcodeScannerViewModel()

    
    var body: some View {
        NavigationStack(){
            VStack{
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(height: 300)
                    .foregroundColor(.blue)
                Spacer().frame(height: 100)
                Label("Scanned barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text(viewModel.statusText)
                    .font(Font.largeTitle.bold())
                    .foregroundStyle(viewModel.statusTextColor)
            }
            
            .navigationTitle("BarCode Sacanner")
        }
        
    }
}

#Preview {
    CameraBarCodeReader()
}
