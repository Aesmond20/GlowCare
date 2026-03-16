//
//  ProductView.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 16/03/2026.
//

import SwiftUI

struct ProductView: View {
    
    @State private var searchText = ""
    
    var filterProducts: [Product] {
        if searchText.isEmpty {
            return products
        }
        return products.filter {
            $0.productName.lowercased().contains(searchText.lowercased())
        }
    }

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
                    
                    Text("Produits")
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
            
                    TextField("Rechercher un produit...", text:$searchText)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white)
                                .shadow(radius: 4)
                        )
                        .padding(.horizontal, 15)
                        .padding(.top, 15)
                VStack {
//                    ForEach(filterProducts) { product in
//                        
//                        NavigationLink(destination: ProductDetailView(product: product))
                        
                    }
                }
                .padding(.horizontal, 15)
            }
            .background(
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            )
        }
    }
//}

#Preview {
    ProductView()
}
