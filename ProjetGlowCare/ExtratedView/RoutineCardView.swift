//
//  RoutineCardView.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 14/03/2026.
//

import SwiftUI

struct RoutineCardView: View {
    
    var icon: String
    var title: String
    
    var body: some View {
        
        HStack {
            Image(systemName: icon)
            
            Text(title)
                .font(.title2)
                .fontWeight(.medium)
            
            Spacer()
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .shadow(radius: 4)
        )
        .padding(.horizontal)
    }
}

#Preview {
    RoutineCardView(icon: "sun.max", title: "Crème Hydratante")
}
