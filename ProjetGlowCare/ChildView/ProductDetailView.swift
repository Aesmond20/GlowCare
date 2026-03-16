//
//  ProductDetailView.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 16/03/2026.
//

import SwiftUI

struct ProductDetailView: View {

    var product: Product

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
                    
                    Text("Fiche Produit")
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
                    VStack(spacing: 20) {
                        
                        ProductCardView(product: product)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            HStack {
                                Text("Ingrédients")
                                    .font(.headline)
                                Spacer()
                                Image(systemName: "chevron.right")
                            }
                            
                            Divider()
                            
                            HStack {
                                Image(systemName: "drop.fill")
                                    .foregroundStyle(.gray)
                                Text("Acide Hyaluronique")
                                Spacer()
                            }
                            
                            Divider()
                            
                            HStack {
                                Image(systemName: "leaf.fill")
                                    .foregroundStyle(.gray)
                                Text("Beurre de Karité")
                                Spacer()
                            }
                        }
                        .padding()
                        .background(.white.opacity(0.9))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(radius: 4)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            HStack {
                                Text("Conseils d’Utilisations")
                                    .font(.headline)
                                Spacer()
                                Image(systemName: "chevron.right")
                            }
                            
                            Divider()
                            
                            Text("Appliquer sur le visage propre et sec.")
                            Text("Prendre une noisette de crème.")
                            Text("Faites de léger massage afin de bien la faire pénétrer.")
                        }
                        .padding()
                        .background(.white.opacity(0.9))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(radius: 4)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Avis")
                                .font(.headline)
                            
                            Divider()
                            
                            HStack(spacing: 12) {
                                Image("profil")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                
                                Text("Sophie L.")
                                
                                Spacer()
                                
                                HStack(spacing: 4) {
                                    ForEach(0..<5) { index in
                                        Image(systemName: index < 3 ? "star.fill" : "star")
                                            .foregroundStyle(.yellow)
                                    }
                                }
                            }
                        }
                        .padding()
                        .background(.white.opacity(0.9))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(radius: 4)
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
    ProductDetailView(
        product: Product(
            productName: "Hydrating Cleanser",
            brand: "CeraVe",
            category: "Nettoyant",
            type: "Sèche",
            description: "Nettoyant doux hydratant",
            note: 3,
            image: "sun.max.fill"
        )
    )
}
