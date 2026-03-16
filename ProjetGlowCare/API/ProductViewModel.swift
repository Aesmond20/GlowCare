//
//  GlowCareViewModel.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 12/03/2026.
//

import Foundation
import Observation

@Observable @MainActor
class ProductViewModel {

    private let apiKey: String =
        "patMNpswZ1RofG0pU.d1c52947e0f0226c9a325782cdf7e79721ed7672558c58732ae281fd17ef6170"

    private let baseURL = URL(
        string: "https://api.airtable.com/v0/appm526a5e00I6ErF/Product"
    )!

    var products: [Product] = []

    func fetchProducts() async throws {

        var request = URLRequest(url: baseURL)
        request.httpMethod = "GET"
        request.setValue(
            "Bearer \(apiKey)",
            forHTTPHeaderField: "Authorization"
        )

        let (data, _) = try await URLSession.shared.data(for: request)

        let decoder = JSONDecoder()

        do {
            let decoded = try decoder.decode(ProductsResponse.self, from: data)
            let products = decoded.records.map { $0.fields }
            self.products = products

        } catch {
            print("Erreur de décodage de Product")
            throw error
        }
    }

    func fetchProductByID(_ id: String) async throws -> Product{
        let newURL = URL(
            string:
                "https://api.airtable.com/v0/appm526a5e00I6ErF/Product/\(id) "
        )!
        var request = URLRequest(url: newURL)
        request.httpMethod = "GET"
        request.setValue(
            "Bearer \(apiKey)",
            forHTTPHeaderField: "Authorization"
        )

        let (data, _) = try await URLSession.shared.data(for: request)

        let decoder = JSONDecoder()

        do {
            let decoded = try decoder.decode(ProductRecord.self, from: data)
            let product = decoded.fields
            print(product)
            return product
        } catch {
            print("Erreur de décodage de ProductbyID")
            throw error
        }
    }
}
