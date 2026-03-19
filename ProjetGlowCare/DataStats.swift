//
//  DataStats.swift
//  ProjetGlowCare
//
//  Created by Apprenant78 on 14/03/2026.
//

import SwiftUI
import Charts

struct StatsData: Identifiable {
   let id = UUID()
   let categorie: String
    let valeur: Double
}

let data = [
   StatsData(categorie: "Jan", valeur: 30),
   StatsData(categorie: "Fev", valeur: 50),
   StatsData(categorie: "Mar", valeur: 20),
  StatsData(categorie: "Avr", valeur: 70)
]

struct DataStats: View {
  var body: some View {
      Chart(data) { point in
       LineMark(
           x: .value("Mois", point.categorie),
           y: .value("Valeur", point.valeur)
            )
        }
        .frame(height: 260)
       .padding()
   }
}
#Preview {
   DataStats()
}
