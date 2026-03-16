//
//  TipCardView.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 14/03/2026.
//

import SwiftUI

struct TipCardView: View {
    
    var title: String
    var description: String
    var image: String
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(title)
                .font(.title2)
                .fontWeight(.medium)
            
            Text(description)
                .font(.title3)
            
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(height: 120)
                .clipShape(RoundedRectangle(cornerRadius: 15))
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
    TipCardView(title: "Astuce Bien-Être :", description: "Bien dormir pour une belle peau !", image: "sleep")
}
