//
//  TabBar.swift
//  Zen
//
//  Created by Afi Permana on 05/02/25.
//

import SwiftUI

struct TabButton: View {
    var title: String
    var image: String
    
    @Binding var selected : String
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()){ selected = title }
        }) {
            HStack(spacing: 10) {
                Image(systemName: image)
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 25, height: 25)
                    .foregroundStyle(.white)
                           
                if selected == title {
                    Text(title)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                }
            } //Hstack
            .padding(.vertical, 10)
            .padding(.horizontal)
            .background(Color.white.opacity(selected == title ? 0.08 : 0))
            .clipShape(.capsule)
        } //Button

    }
}

//#Preview {
//    TabBar()
//}
