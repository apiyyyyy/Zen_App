//
//  Main.swift
//  Zen
//
//  Created by Afi Permana on 05/02/25.
//

import SwiftUI

struct Main: View {
    @State var current = "Home"
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            
            TabView(selection: $current) {
                Home()
                    .tag("Home")
                
                Text("Summary")
                    .tag("Summary")
                
                Text("Summary")
                    .tag("Summary")
            } //Tabview
            .ignoresSafeArea()
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            HStack {
            
                TabButton(title: "Home", image: "house", selected: $current)
                
                Spacer()
                
                TabButton(title: "Transactions", image: "dollarsign.arrow.trianglehead.counterclockwise.rotate.90", selected: $current)
                
                Spacer()
                
                TabButton(title: "Summary", image: "chart.pie", selected: $current)
            }//Hstack tabbar
            .padding(.vertical, 12)
            .padding(.horizontal)
            .background(.mutedLavender)
            .clipShape(Capsule())
            .padding(.horizontal, 25)
            .shadow(color: .black.opacity(0.3), radius: 8, x: 0, y: 4)
        } //Zstack
    }
}

#Preview {
    Main()
}
