//
//  ObjectifChoiceView.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 11/03/2026.
//

import SwiftUI

struct GoalChoiceView: View {
    
    @Binding var goalSelected: [String]

     var body: some View {

         ScrollView {
             LazyVGrid(columns: [GridItem(.flexible())], spacing: 20) {
                 ForEach(goals) { goal in
                     let isSelected = goalSelected.contains(goal.goalName)
                     Button {
                         goalSelected = [goal.goalName]
                     } label: {
                         VStack(spacing: 8) {
                             RoundedRectangle(cornerRadius: 20)
                                 .fill(isSelected ? Color.blocs : Color.white)
                                 .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 3)
                                 .frame(height: 100)
                                 .overlay(
                                     VStack(spacing: 5) {
                                         Text(goal.goalName)
                                             .font(.headline)
                                             .foregroundColor(isSelected ? .white : .black)
                                         Text(goal.description)
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
         .navigationTitle("Objectif")
     }
 }
#Preview {
    GoalChoiceView(goalSelected: .constant(["Hydratation"]))
}
