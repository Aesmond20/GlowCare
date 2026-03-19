//
//  ProductView.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 16/03/2026.
//

import SwiftUI

struct ProductView: View {

    @State private var searchText = ""

    @Environment(Notif.self) var notif

//    var filterProducts: [Product] {
//        if searchText.isEmpty {
//            return products
//        } else {
//            return products.filter {
//                $0.productName.localizedCaseInsensitiveContains(searchText)
//                    || $0.brand.localizedCaseInsensitiveContains(searchText)
//            }
//        }
//    }

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

                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.gray)

                    TextField("Rechercher un produit...", text: $searchText)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(.systemGray6))
                        .shadow(radius: 3)
                )
                .padding(.horizontal)
                .padding(.top, 15)
                .padding(.bottom, 20)

                if searchText.isEmpty {
                    VStack(spacing: 20) {

                        VStack(alignment: .leading, spacing: 12) {
                            Text("Populaire en ce moment")
                                .font(.headline)

                            if let firstProduct = products.first {
                                NavigationLink(
                                    destination: ProductDetailView(
                                        product: firstProduct
                                    )
                                ) {
                                    ProductCardView(product: firstProduct)
                                }
                            }
                        }

                        VStack(alignment: .leading, spacing: 15) {
                            Text("Avis Populaire")
                                .font(.headline)

                            Divider()

                            HStack(spacing: 15) {
                                Image("avis1")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())

                                Text("Sophie L.")

                                Spacer()

                                HStack(spacing: 4) {
                                    ForEach(0..<5) { index in
                                        Image(
                                            systemName: index < 3
                                                ? "star.fill" : "star"
                                        )
                                        .foregroundStyle(.yellow)
                                    }
                                }
                            }

                            Text(
                                "Très bonne crème, elle hydrate parfaitement ma peau sans laisser de film gras."
                            )
                            .font(.subheadline)
                            .foregroundStyle(Color.clair)
                        }
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white)
                                .shadow(radius: 4)
                        )
                        .padding(.horizontal)
                    }
                }
            }

            Button(action: {}) {
                Text("Voir plus d’avis")
                    .foregroundStyle(.white)
                    .frame(width: 300, height: 30)
                    .padding()
                    .background(.accent)
                    .clipShape(Capsule())
            }
            .padding(.horizontal)
            .padding(.top, 10)
        }

//        ScrollView {
//            VStack {
//                
//                if !filterProducts.isEmpty {
//                    Text(searchText.isEmpty ? "" : "Résultats")
//                        .font(.headline)
//                    
//                    ForEach(filterProducts, id: \.productName) { product in
//                        NavigationLink(destination: ProductDetailView(product: product)) {
//                            ProductCardView(product: product)
//                        }
//                    }
//                } else if !searchText.isEmpty {
//                    Text("Aucun produit trouvé")
//                        .foregroundStyle(Color.clair)
//                }
//            }
//            .padding(.horizontal)
//        }
    }
}

#Preview {
    ProductView()
        .environment(Notif())
}
