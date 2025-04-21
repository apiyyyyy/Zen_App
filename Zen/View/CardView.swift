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
        var backgroundColor: Color
        var cornerRadius: CGFloat
        var borderColor: Color
        var borderWidth: CGFloat
        var shadowColor: Color
        var shadowRadius: CGFloat
        var shadowOffset: CGSize
        var hasShadow: Bool
    
    init(
        backgroundColor: Color = .white,
        cornerRadius: CGFloat = 12,
        borderColor: Color = .clear,
        borderWidth: CGFloat = 0,
        shadowColor: Color = .gray,
        shadowRadius: CGFloat = 3,
        shadowOffset: CGSize = .zero,
        hasShadow: Bool = true,
        @ViewBuilder content: () -> Content
        ) {
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.borderColor = borderColor
        self.borderWidth = borderWidth
        self.shadowColor = shadowColor
        self.shadowRadius = shadowRadius
        self.shadowOffset = shadowOffset
        self.hasShadow = hasShadow
        self.content = content()
    }
    
    
    var body: some View {
        VStack(alignment: .leading) {
            content
        } //Vstack
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(backgroundColor)
        .cornerRadius(cornerRadius)
        .overlay(
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(borderColor, lineWidth: borderWidth)
        )
        .shadow(
            color: hasShadow ? shadowColor : .clear,
            radius: hasShadow ? shadowRadius : 0,
            x: hasShadow ? shadowOffset.width : 0,
            y: hasShadow ? shadowOffset.height : 0
        )
    }
}
