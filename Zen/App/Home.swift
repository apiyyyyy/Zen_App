//
//  Home.swift
//  Zen
//
//  Created by Afi Permana on 08/12/24.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [Color.offWhite, Color.softTeal], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
                
                ScrollView{
                    HeaderHome()
                        .frame(maxWidth: .infinity)
                                        
                    NavigationLink {
                        
                    } label: {
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
                    } //NavigationLink
                    .buttonStyle(.plain)
                    
                    HStack() {
                        CardView{
                            Text("MY COURSES")
                                .fontWeight(.bold)
                            
                            Spacer().frame(height: 50)
                            
                            Text("Tap to see all your courses kids")
                                .fontWeight(.medium)
                                .font(.system(size: 14))
                        }
                        
                        CardView{
                            Text("MY COURSES")
                                .fontWeight(.bold)
                        }
                        
                    } //Hstack
                    .padding()
                    
                    
                } //scrollview
            } //Zstack
        } // navigation stack
    }
}
                    
#Preview {
    Home()
}
