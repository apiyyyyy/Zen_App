//
//  Login.swift
//  Zen
//
//  Created by MOHAMMADB on 05/02/25.
//
//import FirebaseCore
import SwiftUI
import GoogleSignIn

struct Login: View {
    @EnvironmentObject var authManager : AuthManager
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.softTeal, .offWhite], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            
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
//        guard let clientID = FirebaseApp.app()?.options.clientID else {
//            return
//        }
//        
//        let config = GIDConfiguration(clientID: clientID)
//        GIDSignIn.sharedInstance.configuration = config
//        
//        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
//        let rootVc = windowScene.windows.first?.rootViewController else {
//            return
//        }
//        
//        GIDSignIn.sharedInstance.signIn(withPresenting: rootVc) { result, error in
//            if let error = error {
//                print("Google sign in error : \(error)")
//                return
//            }
//            
//            if let result = result {
//                authManager.handleGoogleSignIn(result: result)
//            }
//        }
        
        guard let clientID = Bundle.main.object(forInfoDictionaryKey: "GIDCLientID") as? String else {
                print("Google Client ID not found in Info.plist")
                return
            }
        
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config
        
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                  let rootVc = windowScene.windows.first?.rootViewController else {
                print("Unable to get root view controller")
                return
        }
        
        GIDSignIn.sharedInstance.signIn(withPresenting: rootVc) {result, error in
            if let error = error {
                print("Google sign in error : \(error)")
                return
            }
            
            guard let result = result else {
                print("No result from google sign in")
                return
            }
            
            guard let idToken = result.user.idToken?.tokenString else {
                print("unable to get id token")
                return
            }
            print("piy idToken \(result.user.accessToken)")
            print("piy idToken \(idToken)")
            print("piy result.user.profile \(result.user)")
            
            // nanti id tokennya di kirim ke backend, sementara di simpen aja dulu
            
//            898524144580-gq81h48l9po50ktk5idgvd558e0vbd34.apps.googleusercontent.com
//            
//            898524144580-loia4qob5t3ovl4mlvbmrhea10sjj5kc.apps.googleusercontent.com
        }
    }
}

#Preview {
    Login()
}
