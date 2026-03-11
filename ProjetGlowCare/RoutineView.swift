//
//  RoutineView.swift
//  GlowCare
//
//  Created by Apprenant78 on 05/03/2026.
//

import SwiftUI

struct RoutineView: View {
    @State private var selectedTime = "5min"
    
    var body: some View {
        VStack (spacing: 20) {
            Text("MA ROUTINE")
                .font(.title)
                .bold()
            
            Text("Choississez votre durée de routine idéale")
            
            HStack {
                Button("3min") { selectedTime = "3min"}
                    //.background(color)
                Button("5min") { selectedTime = "5min"}
                Button("10min") { selectedTime = "10min"}
            }
            Image("chronometre")
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(10)
        }
        
        VStack(alignment: .leading, spacing: 10) {
            
            Text("Etapes d'une routine efficace")
            
            Text(" 1. Nettoyer votre peau")
            Text ("2. Appliquer votre sérum")
            Text("3. Appliquer votre crème")
        }
        .padding()
        .background(.white)
        .cornerRadius(20)
        .shadow(radius: 3)
        
        Text("00:05:00")
            .font(.largeTitle)
        
        NavigationLink(destination: RoutineDetailView ()) {
            Text("Ma Routine Personnelle")
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.green.opacity(0.7))
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        Spacer()
    }
}

#Preview {
    RoutineView()
}
