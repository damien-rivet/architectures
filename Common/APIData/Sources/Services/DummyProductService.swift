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

import APIDomain
import Foundation

public struct DummyProductService: ProductService {

    // MARK: - Initialization

    public init() {
        
    }

    // MARK: - Functions

    public func getProducts() async throws -> [Product] {
        [
            Product(id: UUID(), family: .iPhone, name: "iPhone 16"),
            Product(id: UUID(), family: .iPhonePro, name: "iPhone 16 Pro")
        ]
    }
}
