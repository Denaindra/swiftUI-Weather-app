//
//  FrameWorkDetailButton.swift
//  weatherApp
//
//  Created by Gayan Perera on 2026-02-10.
//

import SwiftUI

struct FrameWorkDetailButton: View {
    
    var body: some View {
        Button(action: {
        }, label: {
            Text("Learn More")
                .frame(width: 280, height: 50)
                .foregroundColor(.white)
                .background(Color.red)
                .font(.body)
                .fontWeight(.semibold)
                .cornerRadius(10)
        })
    }
}

#Preview {
  //  FrameWorkDetailButton(isFramworkSelected: isF)
}
