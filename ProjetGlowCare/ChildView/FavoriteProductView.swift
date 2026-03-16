//
//  FavoriteProductsView.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 11/03/2026.
//

import SwiftUI

struct FavoriteProductView: View {
    @State var vmProduct = ProductViewModel()
    var user = users
    @State var products: [Product]

      var body: some View {

          ScrollView {
              LazyVStack {
                  ForEach(products, id: \.productName) { product in
                      Text(product.productName)
                  }
              }
          }
          .navigationTitle("Produits favoris")
          .task {
              if !user.favoriteProduct.isEmpty {
                  for productID in user.favoriteProduct {
                      do {
                          self.products.append(try await vmProduct.fetchProductByID(productID))
                      } catch {
                          print(error)
                      }
                  }
              }
          }
      }
  }

#Preview {
    FavoriteProductView(products: [])
}
