//
//  DataView.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 13/03/2026.
//

import SwiftUI
import Charts

struct DataPoint : Identifiable {
    var id = UUID()
    var month: String
    var value: Double
}



struct DataView: View {
    
    var data = [
        DataPoint(month: "Janvier", value: 10),
        DataPoint(month: "Février", value: 20),
        DataPoint(month: "Mars", value: 15),
        DataPoint(month: "Avril", value: 28),
        DataPoint(month: "Mai", value: 5),
        DataPoint(month: "Juin", value: 17)
    ]
    
    var body: some View {
        Chart(data) {
            LineMark(x: .value("Mois", $0.month), y: .value("Valeur", $0.value))
        }
        .frame(height: 200)
        .padding()
    }
}

#Preview {
    DataView()
}
