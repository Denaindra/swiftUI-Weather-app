//
//  GridItemView.swift
//  weatherApp
//
//  Created by Gayan Perera on 2026-02-10.
//

import SwiftUI

struct GridItemView: View {
    let frameWorkItem:Framework
    var body: some View {
        HStack(spacing:30){
            Image(frameWorkItem.imageName).resizable().frame(width: 60, height: 60)
            Text(frameWorkItem.name)
                .font(.title)
                .foregroundColor(Color(.label))
                .fontWeight(.bold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
     
        
    }
}

#Preview {
    FramWorkGridView()
}

