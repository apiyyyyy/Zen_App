//
//  Home.swift
//  Zen
//
//  Created by Afi Permana on 08/12/24.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.offWhite, Color.softTeal], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            
                ScrollView{
                    HeaderHome()
                        .frame(maxWidth: .infinity)
                    
                    
                    
                } //scrollview
        }
    }
}
                    
#Preview {
    Home()
}
