//
//  DailyDayView.swift
//  GlowCare
//
//  Created by Apprenant78 on 05/03/2026.
//

import SwiftUI

struct DailyDayView: View {
    var body: some View {
        
        VStack(spacing: 20) {
            
            HStack {
                VStack{
                    Text("Sommeil")
                    Image(systemName: "sommeil")
                }
                VStack{
                    Text("Stress")
                    Image(systemName: "stress")
                }
                VStack{
                    Text("Alimentation")
                    Image(systemName: "alimentation")
                }
            }
            .padding()
            .background(.white)
            .cornerRadius(12)
            .shadow(radius: 20)
            
            Text("Récapitulatif du jour")
            
            Text("Conseil du jour")
            
            NavigationLink(destination: StatsView()) {
                Text("STATISTIQUE SUR 30 JOURS")
                    .padding()
                    .background(Color.green.opacity(0.7))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    DailyDayView()
}
