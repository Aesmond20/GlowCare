//
//  DailyDayView.swift
//  GlowCare
//
//  Created by Apprenant78 on 05/03/2026.
//

import SwiftUI

struct DailyDayView: View {
    
    @State private var isEditing = false
    
    @State private var sommeil: String =
    UserDefaults.standard.string(forKey: "sommeil") ?? ""
    @State private var stress: String =
    UserDefaults.standard.string(forKey: "stress") ?? ""
    @State private var alimentation: String =
    UserDefaults.standard.string(forKey: "alimentation") ?? ""
    
    @State private var Sommeil: String = ""
    @State private var Stress: String = ""
    @State private var Alimentation: String = ""
    @State private var ConseilDuJour: String = ""
    
    var body: some View {
       
        VStack{
            Text("DAY RECAP")
                .font(.largeTitle)
        }
            
            HStack {
                VStack {
                    Text("Stress")
                        .font(.headline)
                    
                    Text("modéré")
                        .font(.subheadline)
                    
                    Image("stress")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                }
                .frame(maxWidth: .infinity)
                
                VStack {
                    Text("SOMMEIL")
                        .font(.headline)
                    
                    Text("7h30")
                        .font(.subheadline)
                    
                    Image("sommeil")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                }
                .frame(maxWidth: .infinity)
                
                .frame(maxWidth: .infinity)
                
                VStack {
                    Text("Alimentation")
                        .font(.headline)
                    
                    Text("pas régulier")
                        .font(.subheadline)
                    
                    Image("Alimentaion2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                }
                .frame(maxWidth: .infinity)
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black.opacity(0.2), lineWidth: 1)
            )
            .padding()
            
            VStack(spacing: 20) {
                
                HStack {
                    Text("Récapitulatif du jour")
                        .font(.headline)
                    
                    Spacer()
                    
                    Button(action: {
                        isEditing.toggle()
                    }) {
                        Image(systemName: "pencil")
                    }
                }
                
                if !isEditing {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Sommeil : \(sommeil)")
                        Text("Stress : \(stress)")
                        Text("Alimentation : \(alimentation)")
                    }
                } else {
                    VStack(spacing: 10) {
                        
                        TextField("Sommeil", text: $sommeil)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        TextField("Stress", text: $stress)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        TextField("Alimentation", text: $alimentation)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        Button("Valider") {
                            saveData()
                            isEditing = false
                        }
                        .padding(.top, 10)
                    }
                    
                }
            }
            .padding()
        }
        
        
        func saveData() {
            UserDefaults.standard.set(sommeil, forKey: "sommeil")
            UserDefaults.standard.set(stress, forKey: "stress")
            UserDefaults.standard.set(alimentation, forKey: "alimentation")
        }
    }
    


#Preview {
    DailyDayView()
}
