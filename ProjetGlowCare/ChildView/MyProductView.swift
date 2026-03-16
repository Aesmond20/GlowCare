//
//  MyProductView.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 11/03/2026.
//

import SwiftUI

struct MyProductView: View {

    @State private var productsSelected: [Product] = []
    @State var vm = ProductViewModel()

    var body: some View {

        VStack {
            if vm.products.isEmpty {
                ProgressView()
            } else {
                ScrollView {
                    LazyVGrid(
                        columns: [GridItem(.adaptive(minimum: 120))],
                        spacing: 20
                    ) {
                        ForEach(vm.products, id: \.productName) { product in

                            Button {
                                if productsSelected.contains(where: {
                                    $0.productName == product.productName
                                }) {
                                    productsSelected.removeAll {
                                        $0.productName == product.productName
                                    }
                                } else if productsSelected.count < 4 {
                                    productsSelected.append(product)
                                }
                            } label: {
                                VStack(spacing: 8) {
                                    ZStack {
                                        Circle()
                                            .fill(
                                                productsSelected.contains(
                                                    where: {
                                                        $0.productName
                                                            == product
                                                            .productName
                                                    })
                                                    ? Color.blue : Color.white
                                            )
                                            .frame(width: 80, height: 80)

                                        Image(systemName: "shippingbox.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 28, height: 28)
                                            .foregroundColor(
                                                productsSelected.contains(
                                                    where: {
                                                        $0.productName
                                                            == product
                                                            .productName
                                                    }) ? .white : .blue
                                            )
                                    }

                                    Text(product.productName)
                                        .font(.caption)
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.center)
                                        .frame(width: 80)
                                }
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
                .navigationTitle("Mes Produits")
            }
        }
        .task {
            do {
                try await vm.fetchProducts()
            } catch {
                print(error)
            }
        }
    }
}

#Preview {
    MyProductView()
}
