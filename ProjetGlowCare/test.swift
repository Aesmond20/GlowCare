//
//  test.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 12/03/2026.
//

import SwiftUI

struct test: View {
    
    @State var vm = ProductViewModel()
    
    var body: some View {
        VStack {
            if vm.products.isEmpty {
                ProgressView()
            } else {
                List(vm.products, id:\.productName) { product in
                    Text(product.productName)
                }
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
    test()
}
