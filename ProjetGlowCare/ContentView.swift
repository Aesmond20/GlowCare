//
//  ContentView.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 04/03/2026.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(Notif.self) var notif
    
    var body: some View {

        TabView {
            TodayView()
                .tabItem {
                    Label("Aujourd'hui", systemImage: "sun.max")
                }

            ProductView()
                .tabItem {
                    Label("Produits", systemImage: "bag")
                }
        }
    }
}

#Preview {
    ContentView()
        .environment(Notif())
}
