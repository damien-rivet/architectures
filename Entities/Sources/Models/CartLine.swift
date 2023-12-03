//
// Copyright (C) 2023 Damien Rivet

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program. If not, see https://www.gnu.org/licenses.
//

import Foundation

public final class CartLine {

    // MARK: - Properties

    public let product: Product
    public private (set) var quantity: Int

    // MARK: - Initialisation

    public init(product: Product, quantity: Int = 1) {
        self.product = product
        self.quantity = quantity
    }

    // MARK: - Functions

    public func increase(by quantity: Int = 1) {
        self.quantity += quantity
    }

    public func decrease(by quantity: Int = 1) {
        self.quantity -= quantity
    }
}
