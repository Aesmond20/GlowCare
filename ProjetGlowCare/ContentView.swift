//
//  ContentView.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 04/03/2026.
//

import SwiftUI

struct ContentView: View {

    var body: some View {

        TabView {
            TodayView()
                .tabItem {
                    Label("Aujourd'hui", systemImage: "sun.max")
                }
        }
    }
}

#Preview {
    ContentView()
}
