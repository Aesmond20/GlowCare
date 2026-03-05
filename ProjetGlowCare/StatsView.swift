//
//  StatsView.swift
//  GlowCare
//
//  Created by Apprenant78 on 05/03/2026.
//

import SwiftUI

struct StatsView: View {
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text("Fréquence de routine sur 4mois")
                .font(.title3)
            
            Image(systemName: "chart.line.uptrend.xyaxis")
                .resizable()
                .scaledToFit()
                .frame(height: 150)
            
            VStack(alignment: .leading) {
                Text("Mes produits favoris ")
                    .font(.headline)
                
                Text("Nettoyage")
                Text("Sérum")
            }
            .padding()
            .background(.white)
            .cornerRadius(12)
            .shadow(radius: 3)
            
            VStack(alignment: .leading){
                
                Text("Message de Motivation")
                Text("Le changement ne se fait pas en un jour, chaque petite action positive construit la personne.")
            }
            .padding()
            .background(.white)
            .cornerRadius(12)
            .shadow(radius: 3)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    StatsView()
}
