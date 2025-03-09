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
                    
                    CardView{
                        Text("Your Next Class")
                            .fontWeight(.bold)
                        
                        Spacer().frame(height: 30)
                        
                        HStack(spacing: 5) {
                            Image(systemName: "calendar")
                            
                            Text("9 mar 2025")
                        } //hstack
                        
                        Spacer().frame(height: 15)
                        
                        HStack(spacing: 5) {
                            Image(systemName: "clock")
                            
                            Text("15:00")
                            
                        } //hstack
                        
                        Spacer().frame(height: 15)
                        
                        HStack(spacing: 5) {
                            Image(systemName: "person.crop.artframe")
                            
                            Text("Ms. Nabiela")
                         } //hstack
                        
                        Spacer().frame(height: 50)

                        Text("You may delay, but time will not. \n - Benjamin Franklin")
                            .fontWeight(.bold)
                        
                        Spacer().frame(height: 10)
                        
                        Text("So, don't be late kids 🤪")
                            .fontWeight(.medium)
                        
                    }
                    .padding()
                    
                    
                } //scrollview
        }
    }
}
                    
#Preview {
    Home()
}
