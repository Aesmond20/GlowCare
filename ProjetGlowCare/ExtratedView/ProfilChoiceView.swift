//
//  ProfilChoiceView.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 11/03/2026.
//

import SwiftUI

struct ProfilChoiceView: View {
    
    var icon: String
    var title: String
    var choice: String

    var body: some View {
        
        HStack {
            
            Image(systemName: icon)
                .foregroundStyle(.foncé)
            
            Text(title)
                .foregroundStyle(.foncé)
            
            Spacer()
            
            Text(choice)
                .foregroundStyle(.clair)
            
            Image(systemName: "chevron.right")
        }
        .font(.title3)
        .padding()
    }
  }

#Preview {
    ProfilChoiceView (
        icon: "drop",
        title: "Type de Peau",
        choice: "Mixte")
}
