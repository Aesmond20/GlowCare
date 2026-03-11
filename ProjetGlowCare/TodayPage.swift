//
//  TodayPage.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 05/03/2026.
//

import SwiftUI

struct TodayPage: View {
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack {
                    HStack {
                        NavigationLink(destination: ProfilPage()) {
                            Image("profil")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                        }
                        Spacer()
                        
                        Text("Aujourd'hui")
                            .font(.title)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        NavigationLink(destination: EmptyView()) {
                            Image(systemName: "bell")
                                .font(.title3)
                                .foregroundStyle(.black)
                        }
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Bonjour Emma,")
                            .font(.title)
                            .fontWeight(.medium)
                        
                        Text("Voici votre routine du jour")
                            .font(.title3)
                    }
                    
                    ForEach(routineSteps) { step in
                        NavigationLink(destination: EmptyView()) {
//                            stepName: step.stepName,
//                            descritpion: step.description
                        }
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    TodayPage()
}
