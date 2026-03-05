//
//  routineDetailView.swift
//  GlowCare
//
//  Created by Apprenant78 on 05/03/2026.
//

import SwiftUI

struct RoutineDetailView: View {
    var body: some View {
        
        VStack(spacing: 25) {
            Text("Ma Routine Adaptée")
                .font(.title)
                .bold()
            
            VStack(alignment: .leading) {
                Label("Listes de mes produits", systemImage: "circle.fill")
                Label("Etapes", systemImage: "circle.fill")
            }
            .padding()
            .background(.white)
            .cornerRadius(12)
            .shadow(radius: 3)
            
            Text("Vidéo Explicative")
                .background(.white)
                .cornerRadius(24)
                .shadow(radius: 5)
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(height: 500)
                .overlay(
                    Image(systemName: "play.circle.fill")
                )
            Spacer()
        }
    }
}

#Preview {
    RoutineDetailView()
}
