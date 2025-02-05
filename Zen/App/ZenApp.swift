//
//  ZenApp.swift
//  Zen
//
//  Created by Afi Permana on 08/12/24.
//

import SwiftUI
import SwiftData

@main
struct ZenApp: App {
    
    var body: some Scene {
        WindowGroup {
            Home()
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
