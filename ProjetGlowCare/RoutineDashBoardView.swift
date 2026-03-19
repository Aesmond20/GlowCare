//
//  RoutineDashBoardView.swift
//  GlowCare
//
//  Created by Apprenant78 on 12/03/2026.
//

import SwiftUI

import SwiftUI


struct RoutineDashboardView: View {
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                
                header
                
                statsCard
                
                favoritesCard
                
                motivationCard
                
            }
            .padding()
        }
        .background(Color(.systemGroupedBackground))
    }
}

extension RoutineDashboardView {
    
    var header: some View {
        VStack(alignment: .leading, spacing: 6) {
            
            Text("Routine")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Suivi de ta régularité")
                .foregroundColor(.secondary)
        }
    }
}


extension RoutineDashboardView {
    
    var statsCard: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            HStack {
                
                Image(systemName: "chart.line.uptrend.xyaxis")
                    .font(.title2)
                    .foregroundColor(.blue)
                
                Text("Fréquence sur 4 mois")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Text("+20%")
                    .foregroundColor(.green)
                    .fontWeight(.bold)
            }
            
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.blocs.opacity(0.5))
                .frame(height: 120)
        }
        .padding()
        .background(Color.blocs.opacity(0.12))
        .cornerRadius(16)
    
    }
}



extension RoutineDashboardView {
    
    var favoritesCard: some View {
        
        
        VStack(alignment: .leading, spacing: 16) {
            
            Text("Produits favoris")
                .font(.headline)
            
            
            HStack(spacing: 70) {
                
                favoriteItem(icon: "drop.fill", name: "Nettoyant")
                
                favoriteItem(icon: "aqi.medium", name: "Sérum")
            }
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.white)
        }
        .padding()
        .background(.white)
        .cornerRadius(16)
    }
    
    func favoriteItem(icon: String, name: String) -> some View {
        VStack(spacing: 8) {
            
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(.accentColor)
                .frame(width: 40, height: 40)
                .background(Color.blocs.opacity(0.35))
                .clipShape(Circle())
            
            Text(name)
                .font(.subheadline)
        }
    }
}


extension RoutineDashboardView {
    
    var motivationCard: some View {
        VStack(alignment: .leading, spacing: 12) {
            
            HStack {
                Image(systemName: "sparkles")
                Text("Motivation")
                    .fontWeight(.semibold)
            }
            
            Text("Le changement ne se fait pas en un jour. Chaque petite action positive construit la personne que tu veux devenir.")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color.blocs.opacity(0.12))
        .cornerRadius(16)
    }
}



#Preview {
    RoutineDashboardView()
}
