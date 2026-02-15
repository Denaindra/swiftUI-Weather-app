//
//  FrameWorkDetailButton.swift
//  weatherApp
//
//  Created by Gayan Perera on 2026-02-10.
//

import SwiftUI
import SafariServices

struct FrameWorkDetailButton: View {
    @State private var isShowingSafari = false
    let urlString:String
    
    var body: some View {
        Button(action: {
            isShowingSafari = true
        }, label: {
//            Text("Learn More")
//                .frame(width: 280, height: 50)
//                .foregroundColor(.white)
//                .background(Color.red)
//                .font(.body)
//                .fontWeight(.semibold)
//                .cornerRadius(10)
            Label("Learn More", systemImage: "book.fill")
                .frame(width: 280, height: 50)
                .foregroundColor(.white)
                .background(Color.red)
                .font(.body)
                .fontWeight(.semibold)
                .cornerRadius(10)
        })
        .fullScreenCover(isPresented: $isShowingSafari) {
            if let url = URL(string: urlString) {
                SafariView(url: url)
            } else {
                Text("Invalid URL")
            }
        }
    }
}

#Preview {
    FrameWorkDetailButton(urlString: MockData.sampleFramework.urlString)
}
