//
//  ProjetGlowCareApp.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 04/03/2026.
//

import SwiftUI

@main
struct ProjetGlowCareApp: App {
    
    @State private var notif = Notif()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(notif)
        }
    }
}
