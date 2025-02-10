//
//  HeaderHome.swift
//  Zen
//
//  Created by Afi Permana on 08/12/24.
//

import SwiftUI

struct HeaderHome: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.softTeal, .mutedLavender],
              startPoint: .topLeading,
              endPoint: .bottomTrailing
            )
            
            VStack(spacing: 10) {
                HStack(spacing: 15) {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundStyle(.white)
                    Text("Hi, Bela")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                }//hstack
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 10)
                
                Text("Kelas XII A")
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 5)
                
                Text("Guru Pembimbing : Belaguuuu")
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 5)
            } //vstack
            .padding()
        }// zstack
        .frame(height: 200)
        .cornerRadius(15)
        .padding()
    }
}

#Preview {
    HeaderHome()
}
