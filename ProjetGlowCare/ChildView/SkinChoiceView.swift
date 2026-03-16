//
//  SkinChoiceView.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 11/03/2026.
//

import SwiftUI

struct SkinChoiceView: View {
    
    @Binding var typeSelected: [String]

     var body: some View {

         ScrollView {
             LazyVGrid(columns: [GridItem(.flexible())], spacing: 20) {
                 ForEach(skinTypes) { type in
                     let isSelected = typeSelected.contains(type.typeName)
                     Button {
                         typeSelected = [type.typeName]
                     } label: {
                         VStack(spacing: 8) {
                             RoundedRectangle(cornerRadius: 20)
                                 .fill(isSelected ? Color.blocs : Color.white)
                                 .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 3)
                                 .frame(height: 100)
                                 .overlay(
                                     VStack(spacing: 5) {
                                         Text(type.typeName)
                                             .font(.headline)
                                             .foregroundColor(isSelected ? .white : .black)
                                         Text(type.description)
                                             .font(.caption)
                                             .foregroundColor(isSelected ? .white.opacity(0.9) : .gray)
                                             .multilineTextAlignment(.center)
                                     }
                                     .padding()
                                 )
                         }
                     }
                     .buttonStyle(.plain)
                 }
             }
             .padding()
         }
         .navigationTitle("Type de peau")
     }
 }

#Preview {
    SkinChoiceView(typeSelected: .constant(["Mixte"]))
}
