//
//  Profile.swift
//  Zen
//
//  Created by MOHAMMADB on 06/02/25.
//

import PhotosUI
import SwiftUI
import Inject

struct Profile: View {
//    @ObserveInjection private var iO
    @State private var profileImage: Image?
    @State private var profileImageItem : PhotosPickerItem?
    @State private var parentsName: String = ""
    @State private var birthDate: Date = Date()
    @State private var gender: String = ""
    @State private var instaHandle: String = ""
    @State private var twitterHandle: String = ""
    @State private var phoneNumber: String = ""
    @State private var email: String = ""
    @State private var horoscrope: String = ""
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.offWhite, Color.freshMint], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    // Profile Picture Section
                    VStack {
                        if let profileImage = profileImage {
                            profileImage
                                .resizable()
                                .scaledToFill()
                                .frame(width: 120, height: 120, alignment: .center)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                        }else {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 120, height: 120)
                                .foregroundColor(.gray)
                        }
                        
                        PhotosPicker(selection: $profileImageItem) {
                            Text("Upload Profile Picture :P")
                                .font(.subheadline)
                                .foregroundColor(.warmCoral)
                        }
                        .onChange(of: profileImageItem) { oldValue, newValue in
                            Task {
                                if let loaded = try? await profileImageItem?.loadTransferable(type: Image.self){
                                    profileImage = loaded
                                }else {
                                    print("failed to load")
                                }
                            }
                        }
                        
                    } //vstack
                    .padding(.vertical, 20)
                    
                    // Personal Info Card
                    CardData(title: "Personal Information") {
                        VStack(spacing: 20) {
                            TextFieldNih(title: "Parent's Name", text: $parentsName)
                            
                            DatePicker("Birth Date", selection: $birthDate, displayedComponents: .date)
                                .datePickerStyle(CompactDatePickerStyle())
                            
                            
                        } //Vstack
                        .padding()
                        
                    }
                    .padding()
                    
                    // Sosmed Info Card
                    CardData(title: "Social Media") {
                        VStack(spacing: 20) {
                            TextFieldNih(
                                title: "Instagram",
                                text: $instaHandle
                            )
                            
                            TextFieldNih(
                                title: "twitter",
                                text: $twitterHandle
                            )
                            
                            
                        } //Vstack
                        .padding()
                        
                    }
                    .padding()
                    
                    // Save Button
                    Button {
                        saveProfile()
                    } label: {
                        Text("Save Profile ")
                            .font(.headline)
                            .foregroundStyle(.mutedLavender)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(.bluee)
                            .cornerRadius(10)
                    }
                    .padding()
                }//vstack
                .navigationTitle("Your Profile :)")
            } //scrollview
        }//zstack
//        .enableInjection()
        
    }
                           

    private func saveProfile() {
        print("Profile save")
    }
}

#Preview {
    Profile()
}
