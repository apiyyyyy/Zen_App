//
//  Login.swift
//  Zen
//
//  Created by MOHAMMADB on 05/02/25.
//
import FirebaseCore
import SwiftUI
import GoogleSignIn

struct Login: View {
    @EnvironmentObject var authManager : AuthManager
    
    var body: some View {
        ZStack {
            LinearGradient(
              colors: [.softTeal, .mutedLavender],
              startPoint: .topLeading,
              endPoint: .bottomLeading
            )
            .ignoresSafeArea()
            
            VStack(spacing: 10) {
                Text("Hi, Welcome Students :)")
                    .font(.system(size: 33))
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 5)
                
                Text("Please sign in using your google account")
                    .font(.system(size: 12))
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 5)
                    .padding(.bottom, 100)
                
                Button(action: {
                    signInWithGoogle()
                }, label: {
                    Image(.googleLogo)
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .leading)
                    
                    Text("Sign in with Google")
                        .padding()
                        .font(.title3)
                        .foregroundStyle(.warmGray)
                }) //button
                .padding(.leading)
                .padding(.trailing)
                .background(.offWhite)
                .cornerRadius(8)

            } //vstack
            .padding()
        }//zstack
    }
    
    func signInWithGoogle() {
        guard let clientID = FirebaseApp.app()?.options.clientID else {
            return
        }
        
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config
        
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
        let rootVc = windowScene.windows.first?.rootViewController else {
            return
        }
        
        GIDSignIn.sharedInstance.signIn(withPresenting: rootVc) { result, error in
            if let error = error {
                print("Google sign in error : \(error)")
                return
            }
            
            if let result = result {
                authManager.handleGoogleSignIn(result: result)
            }
        }
    }
}

#Preview {
    Login()
}
