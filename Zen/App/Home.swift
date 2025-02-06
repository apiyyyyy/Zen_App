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
            LinearGradient(colors: [Color.offWhite, Color.freshMint], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            
            
            VStack {
                HeaderHome()
                    .frame(maxWidth: .infinity)
                
                ScrollView{
                    VStack(alignment: .leading) {
                        Text("Tugas - Tugas Kalian")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundStyle(.warmGray)
                    } //vstack
                    .padding(1)
//                    .background(LinearGradient(colors: [Color.offWhite, Color.freshMint], startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(35)
                } //scrollview
                .frame(maxWidth: .infinity)
                .offset(y:-100)
                .padding(.bottom, -100)
                .scrollClipDisabled()
            } //vstack
        }
    }
}
                    
#Preview {
    Home()
}
