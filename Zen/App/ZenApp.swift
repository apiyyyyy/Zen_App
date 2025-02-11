//
//  ZenApp.swift
//  Zen
//
//  Created by Afi Permana on 08/12/24.
//

import SwiftUI
import SwiftData
import GoogleSignIn
//import FirebaseCore

//class AppDelegate: NSObject, UIApplicationDelegate {
//    func application(_ application: UIApplication,
//                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        FirebaseApp.configure()
//        
//        return true
//    }
//}

@main
struct ZenApp: App {
    @StateObject private var authManager = AuthManager()
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
//                .environmentObject(authManager)
                .onOpenURL { url in
                    GIDSignIn.sharedInstance.handle(url)
                }
        }
    }
}

//var sharedModelContainer: ModelContainer = {
//    let schema = Schema([
//        Item.self,
//    ])
//    let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
//
//    do {
//        return try ModelContainer(for: schema, configurations: [modelConfiguration])
//    } catch {
//        fatalError("Could not create ModelContainer: \(error)")
//    }
//}()
//        .modelContainer(sharedModelContainer)
