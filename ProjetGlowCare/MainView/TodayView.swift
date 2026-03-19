//
//  TodayPage.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 05/03/2026.
//

import SwiftUI

struct TodayView: View {
    
    @Environment(Notif.self) var notif
    
    var body: some View {

        NavigationStack {
            VStack {
                HStack {

                    NavigationLink(destination: ProfilView()) {
                        Image("profil")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                    }

                    Spacer()

                    Text("Aujourd'hui")
                        .font(.title)
                        .fontWeight(.medium)

                    Spacer()

                    NavigationLink(destination: NotifView()) {
                        Image(systemName: "bell")
                            .font(.title3)
                            .foregroundStyle(.black)
                    }
                }
                .padding()

                Capsule()
                    .fill(.gray.opacity(0.1))
                    .frame(width: 390, height: 4)

                ScrollView {
                    VStack(alignment: .leading) {
                        
                        VStack(alignment: .leading, spacing: 20) {
                            
                            Text("Bonjour Emma,")
                                .font(.title)
                                .fontWeight(.medium)
                            
                            Text("Voici votre routine du jour")
                                .font(.title3)
                        }
                        .padding()
                        
                        VStack(spacing: 8) {
                            
                            RoutineCardView(
                                icon: "drop.fill",
                                title: "Nettoyage"
                            )
                            
                            RoutineCardView(
                                icon: "drop",
                                title: "Sérum"
                            )
                            
                            RoutineCardView(
                                icon: "drop.circle",
                                title: "Hydratation"
                            )
                        }
                        .padding(.top)
                        
                        VStack {
                            TipCardView(
                                title: "Astuce Bien-Être",
                                description:
                                    "Bien dormir pour une belle peau !",
                                image: "sleep"
                            )
                            
                            TipCardView(
                                title: "Astuce Bien-Être",
                                description:
                                    "Boire 1,5L par jour = Hydratation !",
                                image: "water"
                            )
                        }
                        .padding(.top, 25)
                    }
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
    TodayView()
        .environment(Notif())
}
