//
//  Personality.swift
//  Zen
//
//  Created by MOHAMMADB on 10/02/25.
//

import SwiftUI

struct Personality: View {
    var body: some View {
        ZStack {
            LinearGradient(
              colors: [Color.softTeal, .offWhite],
              startPoint: .leading,
              endPoint: .trailing
            )
            .ignoresSafeArea()
            
            ScrollView{
                ZStack {
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
                        
                        Divider()
                            .frame(height: 2)
                            .overlay(.peach)
                        
                        Text("Nickname : Belgaa")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 5)
                        
                        Text("Parents name : skdjfsdkjf")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 5)
                        
                        Text("Nickname : Belgaa")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 5)
                        
                        Text("Parents name : skdjfsdkjf")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 5)
                        
                        Text("Nickname : Belgaa")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 5)
                        
                        Text("Parents name : skdjfsdkjf")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 5)
                        
                        Divider()
                            .frame(height: 2)
                            .overlay(.peach)
                        
                        Text("Parents name : skdjfsdkjf")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 5)
                        
                        Text("Nickname : Belgaa")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 5)
                        
                        Text("Parents name : skdjfsdkjf")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 5)
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Text("Edit Profile")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundStyle(.offWhite)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.peach)
                                .cornerRadius(10)
                        }
                        .padding()
                    } //vstack
                    .padding()
                    .cornerRadius(20)
                    .overlay {
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.peach, lineWidth: 8)
                    }
                }// zstack
                .frame(height: 600)
                .cornerRadius(15)
                .padding()
                .foregroundStyle(.rosyPeach)
                
                Button {
                    
                } label: {
                    Text("Logout")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundStyle(.offWhite)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.warmCoral)
                        .cornerRadius(10)
                }
                .padding()
            } //scrollview
        }
    }
}

#Preview {
    Personality()
}
