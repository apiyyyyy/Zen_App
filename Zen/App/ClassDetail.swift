//
//  ClassDetail.swift
//  Zen
//
//  Created by Afi Permana on 18/04/25.
//

import SwiftUI

struct ClassDetail: View {
    var body: some View {
        ZStack {
            Color.lightBlue
                .ignoresSafeArea()
            
            ScrollView {
                HeaderDetail(name: "Bimbingan Konseling")
                    .frame(maxWidth: .infinity, alignment: .top)
                
                VStack(alignment: .center, spacing: 15) {
                    CardView(cornerRadius: 20, hasShadow: false) {
                        Text("Today's lesson topics")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.mutedLavender)
                        
                        Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo, voluptatem.")
                            .font(.system(size: 13))
                            .foregroundColor(.black)
                            .padding(.top, 15)
                    }
                    
                }//VStack
                .padding()
                

            } //ScrollView
            .ignoresSafeArea()
        } // Zstack
    }
}

#Preview {
    ClassDetail()
}
