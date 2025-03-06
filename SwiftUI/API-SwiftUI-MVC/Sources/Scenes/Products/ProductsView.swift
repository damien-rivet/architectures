//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see https://www.gnu.org/licenses.
//

import SwiftUI
import APIDomain
import APIData

struct FamilyWithProducts: Identifiable {

    var id: String {
        family.rawValue
    }

    let family: ProductFamily
    let products: [Product]
}

struct ProductsView: View {

    // MARK: - Constants

    private let productRepository: APIDomain.ProductRepository

    // MARK: - Properties

    @State
    private var products: [Product]

    @State
    private var productsPerFamily: [FamilyWithProducts]

    // MARK: - View

    init(productRepository: APIDomain.ProductRepository = APIData.ProductRepository()) {
        self.productRepository = productRepository


    }

    // MARK: - View

    var body: some View {
        NavigationStack {
            List {
                ForEach(productsPerFamily) { familyWithProducts in
                    Section(familyWithProducts.family.rawValue) {
                        ForEach(familyWithProducts.products) { product in
                            Text(product.name)
                        }
                    }
                }
            }
            .navigationTitle("Products")
            .task {
                await refreshProducts()

            }
        }
    }

    // MARK: - Functions


    private func refreshProducts() async {
        // TODO: Handle errors
        try? await productRepository.fetchProducts()


    }

    private func buildProductsList() -> [FamilyWithProducts] {
        ProductFamily
            .allCases
            .map { productFamily in
                FamilyWithProducts(family: productFamily, products: products.filter({ $0.family == productFamily }))
            }
            .filter { !$0.products.isEmpty }
    }
}

#Preview {
    ProductsView()
}
