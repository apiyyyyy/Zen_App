//
//  HeaderDetail.swift
//  Zen
//
//  Created by Afi Permana on 18/04/25.
//

import SwiftUI

struct HeaderDetail: View {
    let name: String
    
    
    var body: some View {
        ZStack{
            Color.bluee
            
            VStack(spacing: 10) {
                Spacer()
                Text(name)
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.leading, .bottom], 20)
                
            } //vstack
        }//zstack
        .frame(height: 180)
        .frame(maxWidth: .infinity)
        .clipShape(RoundedCorner(radius: 30, corners: [.bottomLeft, .bottomRight]))
        .ignoresSafeArea()
        
    }
}

#Preview {
    HeaderDetail(name: "Bimbingan Konseling")
}
