//
//  ProductCardView.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 16/03/2026.
//

import SwiftUI

struct ProductCardView: View {

    var product: Product

    var body: some View {

        HStack(spacing: 16) {
            Image(systemName: product.image)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
                .padding(10)

            VStack(alignment: .leading, spacing: 8) {

                Text(product.productName)
                    .font(.title2.bold())

                Text(product.brand)
                    .font(.title2)
                    .foregroundStyle(Color.clair)

                HStack(spacing: 4) {
                    ForEach(0..<5, id: \.self) { index in
                        Image(systemName: index < product.note ? "star.fill" : "star.fill")
                            .foregroundColor(index < product.note ? .yellow : .gray.opacity(0.4))
                            .font(.title3)
                    }

                    Text("      (120 avis)")
                        .font(.caption)
                        .foregroundStyle(Color.clair)
                }
            }
        }
        .padding()
        .foregroundStyle(.foncé)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .shadow(radius: 4)
        )
    }
}

#Preview {
    ProductCardView(
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
