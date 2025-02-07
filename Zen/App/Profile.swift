//
//  Profile.swift
//  Zen
//
//  Created by MOHAMMADB on 06/02/25.
//

import SwiftUI
import Inject

struct Profile: View {
    @ObserveInjection var inject
    
    var body: some View {
        VStack {
            Text("123")
        } //vstack
        .enableInjection()
    }
}

#Preview {
    Profile()
}
