//
//  ProfilView.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 11/03/2026.
//

import SwiftUI

struct ProfilView: View {

    @State private var skinChoice: [String] = []
    @State private var goalChoice: [String] = []
    @State private var favoriteProducts: [Product] = []
    @State private var favoriteVideos: [Video] = []

    var body: some View {

        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {

                    Image("profil")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())

                    Text("Emma")
                        .font(.title)

                    VStack(spacing: 0) {

                        NavigationLink {
                            SkinChoiceView(typeSelected: $skinChoice)
                        } label: {
                            ProfilChoiceView(
                                icon: "drop",
                                title: "Type de peau",
                                choice: skinChoice.first ?? "Aucun"
                            )
                        }

                        NavigationLink {
                            GoalChoiceView(goalSelected: $goalChoice)
                        } label: {
                            ProfilChoiceView(
                                icon: "target",
                                title: "Objectif",
                                choice: goalChoice.first ?? "Aucun"
                            )
                        }

                        NavigationLink {
                            FavoriteProductView(products: favoriteProducts)
                        } label: {
                            ProfilChoiceView(
                                icon: "bag",
                                title: "Produits favoris",
                                choice: "\(favoriteProducts.count)"
                            )
                        }

                        NavigationLink {
                            FavoriteVideoView(videos: favoriteVideos)
                        } label: {
                            ProfilChoiceView(
                                icon: "play.rectangle",
                                title: "Vidéos favorites",
                                choice: "\(favoriteVideos.count)"
                            )
                        }
                    }
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 2)
                    .padding()

                    NavigationLink {
                        MyProductView()
                    } label: {
                        HStack {
                            Text("Mes Produits")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        .font(.title3)
                        .foregroundStyle(.foncé)
                        .padding()
                    }
                }
                .padding(.horizontal, 20)
                .padding()

            }
            .navigationTitle("Profil")

        }
    }
}

#Preview {
    ProfilView()
}
