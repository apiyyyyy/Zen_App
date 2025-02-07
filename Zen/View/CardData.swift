//
//  CardData.swift
//  Zen
//
//  Created by MOHAMMADB on 07/02/25.
//

import SwiftUI

struct CardData<Content: View>: View {
    let title: String
    let content: Content
    
    init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.headline)
                .padding(.horizontal)
            
            content
                .background(.offWhite)
                .cornerRadius(11)
                .shadow(radius: 1)
        }//vstack
    }
}

//#Preview {
////    CardData<self>(title: "Test", content: <#() -> _#>)
//}
