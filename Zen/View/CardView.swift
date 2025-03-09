//
//  CardView.swift
//  Zen
//
//  Created by Afi Permana on 09/03/25.
//

import Foundation
import SwiftUI


struct CardView<Content: View>: View {
    let content: Content
    var backgroundColor: Color = .white
    var corderRadios: CGFloat = 12
    var borderColor: Color = .clear
    var borderWidth: CGFloat = 0
    var shadowColor: Color = .gray
    var shadowRadius: CGFloat = 3
    var shadowOffset: CGSize = .zero
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    
    var body: some View {
        VStack(alignment: .leading) {
            content
        } //Vstack
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(backgroundColor)
        .cornerRadius(corderRadios)
        .overlay(
            RoundedRectangle(cornerRadius: corderRadios)
                .stroke(borderColor, lineWidth: borderWidth)
        )
        .shadow(color: shadowColor, radius: shadowRadius, x: shadowOffset.width, y: shadowOffset.height)
    }
}
