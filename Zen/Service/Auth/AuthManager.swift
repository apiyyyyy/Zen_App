//
//  AuthManager.swift
//  Zen
//
//  Created by MOHAMMADB on 06/02/25.
//

import Foundation
import GoogleSignIn
import Combine

class AuthManager: ObservableObject {
    @Published var isLoggedIn: Bool = false
    @Published var needProfileSetup: Bool = false
    private let authService = AuthService()
     
    
    init() {
        checkExistingSession()
    }
    
    private func checkExistingSession() {
        authService.checkExistingSession { [weak self] result in
            switch result {
            case .success(let (isNewUser, _)):
                self?.isLoggedIn = true
                self?.needProfileSetup = isNewUser
                
            case .failure:
                self?.isLoggedIn = false
            }
        }
    }
    
    func handleGoogleSignIn(result: GIDSignInResult) {
        authService.handleGoogleLogin(idToken: result.user.idToken?.tokenString) { [weak self] result in
            switch result {
            case .success(let isNewUser) :
                self?.isLoggedIn = true
                self?.needProfileSetup = isNewUser
                
            case .failure(let error):
                print("Login Error : \(error)")
            }
        }
    }
    
    func signOut() {
        authService.clearSession()
        isLoggedIn = false
        needProfileSetup = false
    }
}
