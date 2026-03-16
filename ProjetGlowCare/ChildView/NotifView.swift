//
//  NotifView.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 16/03/2026.
//

import SwiftUI

struct NotifView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var routineReminder = false
    @State private var weekCareReminder = false
    @State private var seasonTips = false
    @State private var recommendations = false
    @State private var popularProducts = false
    @State private var selectedTime = Date()
    @State private var timePicker = false
    
    var body: some View {
        
        NavigationStack {
            VStack {
                HStack {

                    Spacer()

                    Text("Notifications")
                        .font(.title)
                        .fontWeight(.medium)

                    Spacer()

                    NavigationLink(destination: EmptyView()) {
                        Image(systemName: "bell")
                            .font(.title3)
                            .foregroundStyle(.black)
                    }
                }
                .padding(.horizontal)
                .padding(.top, 10)
                
                Capsule()
                    .fill(.gray.opacity(0.1))
                    .frame(width: 390, height: 4)
                
                Image(systemName: "bell")
                    .font(.title2)
                    .foregroundStyle(.blocs)
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                
                VStack(spacing: 15) {
                    
                    Toggle("Rappel Routine Quotidienne", isOn: $routineReminder)
                        .padding(.vertical, 4)
                    
                    Button {
                        timePicker.toggle()
                    } label: {
                        HStack {
                            Spacer()
                            
                            Text(selectedTime.formatted(date: .omitted, time: .shortened))
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                        }
                        .padding(.vertical, 15)
                        .padding(.horizontal)
                        .cornerRadius(10)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white)
                                .shadow(radius: 2)
                        )
                    }
                    
                    Divider()
                    
                    Toggle("Rappel Soin Hebdomadaire", isOn: $weekCareReminder)
                        .padding(.vertical, 4)
                    
                    Divider()
                    
                    Toggle("Conseils Saisonniers", isOn: $seasonTips)
                        .padding(.vertical, 4)
                    
                }
                .padding(15)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.white)
                        .shadow(radius: 4)
                )
                .padding(.horizontal, 10)
                
                VStack(alignment: .leading) {
                    
                    Spacer()
                    
                    Text("Autres Notifications")
                        .font(.title3)
                        .fontWeight(.medium)
                        .padding(.horizontal)
                    
                    Toggle("Recommandations", isOn: $recommendations)
                        .padding(.vertical, 14)
                        .padding(.horizontal)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white)
                                .shadow(radius: 4)
                        )
                        .padding(.horizontal, 10)
                    
                    Toggle("Produits Populaires", isOn: $popularProducts)
                        .padding(.vertical, 14)
                        .padding(.horizontal)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white)
                                .shadow(radius: 4)
                        )
                        .padding(.horizontal, 10)
                    
                    Spacer()
                }
                                
                Button("Enregistrer") {
                    dismiss()
                }
                .font(.title2)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 16)
                .background(.accent)
                .foregroundStyle(.white)
                .cornerRadius(20)
                .padding(.horizontal, 10)
            }
            .padding()
            .font(.title3)
            .foregroundStyle(.foncé)
            .tint(.blocs)
            
            .sheet(isPresented: $timePicker) {
                
                VStack {
                    
                    DatePicker(
                        "Choisir l'heure",
                        selection: $selectedTime,
                        displayedComponents: .hourAndMinute
                    )
                    .datePickerStyle(.wheel)
                    .labelsHidden()
                    
                    Button("Valider") {
                        timePicker = false
                    }
                    .padding()
                }
            }
            .background(
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            )
        }
    }
}

#Preview {
    NotifView()
}
