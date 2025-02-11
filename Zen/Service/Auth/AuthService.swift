//
//  AuthService.swift
//  Zen
//
//  Created by MOHAMMADB on 06/02/25.
//

import Foundation
//import FirebaseAuth
import GoogleSignIn


class AuthService {
//    private let baseURL = URL(string: "https://your-auth-api.com")!
      
      func handleGoogleLogin(idToken: String?, completion: @escaping (Result<Bool, Error>) -> Void) {
//          // Implement your Google token exchange with backend
//          completion(.success(false)) // Replace with actual implementation
          
          guard let idToken = idToken else {
              completion(.failure(NSError(domain: "Auth", code: -1, userInfo: [NSLocalizedDescriptionKey: "Missing ID Token"])))
              return
          }
         
          print("piy idtoken = \(idToken)")
          
//          let credential = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: (GIDSignIn.sharedInstance.currentUser?.accessToken.tokenString)!)
//          
//          Auth.auth().signIn(with: credential) { result, error in
//              if let error = error {
//                  completion(.failure(error))
//                  return
//              }
//              
//              //check if user is new
//              let isNewUser = result?.additionalUserInfo?.isNewUser ?? false
//              completion(.success(isNewUser))
//          }
      }
      
      func checkExistingSession(completion: @escaping (Result<(Bool, String?), Error>) -> Void) {
          // Check if session exists in Keychain
//          if let user = Auth.auth().currentUser {
//              user.getIDTokenResult { Result, error in
//                  if let error = error {
//                      completion(.failure(error))
//                  } else {
//                      completion(.success((false, user.email)))
//                  }
//              }
//          }else {
//              completion(.failure(NSError(domain: "Auth", code: -1, userInfo: [NSLocalizedDescriptionKey: "No Active Session"])))
//          }
      }
      
      func clearSession() {
          // Clear session from Keychain
          
//          do {
//              try Auth.auth().signOut()
//          } catch {
//              print("Error sign out : \(error)")
//          }
      }
}
