//
//  ProductDetailView.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 16/03/2026.
//

import SwiftUI

struct ProductDetailView: View {
    
    var product: Product
    
    @Environment(\.dismiss) var dismiss
    @Environment(Notif.self) var notif

    var body: some View {
        
        NavigationStack {
            VStack {
                HStack {
                    
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
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
                    
                    ProductCardView(product: product)
                        .padding(.top, 20)
                    
                    VStack(spacing: 20) {
                        
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
                        .background(.white)
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
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(radius: 4)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Avis")
                                .font(.headline)
                            
                            Divider()
                            
                            HStack(spacing: 12) {
                                Image("avis1")
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
                            
                            Text("Très bonne crème, elle hydrate parfaitement ma peau sans laisser de film gras.")
                                .font(.subheadline)
                                .foregroundStyle(Color.clair)
                            
                            Divider()
                            
                            HStack(spacing: 12) {
                                Image("avis2")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                
                                Text("Julien R.")
                                
                                Spacer()
                                
                                HStack(spacing: 4) {
                                    ForEach(0..<5) { index in
                                        Image(systemName: index < 4 ? "star.fill" : "star")
                                            .foregroundStyle(.yellow)
                                    }
                                }
                            }

                            Text("Texture agréable et odeur légère, je recommande !")
                                .font(.subheadline)
                                .foregroundStyle(Color.clair)
                        }
                        .padding()
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(radius: 4)
                    }
                    .padding()
                }
            }
            .navigationBarBackButtonHidden(true)
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
    ProductDetailView(product: Product (
        productName: "Hydrating Cleanser",
        brand: "CeraVe",
        category: "Nettoyant",
        type: "Sèche",
        description: "Nettoyant doux hydratant",
        note: 3,
        image: "sun.max.fill"
    ))
        .environment(Notif())
}
