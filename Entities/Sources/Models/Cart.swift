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

public final class Cart {

    // MARK: - Properties

    public private (set) var lines: [CartLine]

    // MARK: - Initialisation

    public init() {
        lines = []
    }

    // MARK: - Functions

    public func add(product: Product) {
        if let existingLine = lines.first(where: { $0.product.identifier == product.identifier }) {
            existingLine.increase()
        } else {
            lines.append(CartLine(product: product))
        }
    }

    public func remove(product: Product) {
        if let existingLine = lines.first(where: { $0.product.identifier == product.identifier }) {
            if existingLine.quantity > 1 {
                existingLine.decrease()
            } else {
                clear(product: product)
            }
        }
    }

    public func clear(product: Product) {
        if let indexOfExistingLine = lines.firstIndex(where: { $0.product.identifier == product.identifier }) {
            lines.remove(at: indexOfExistingLine)
        }
    }

    public func count(of product: Product) -> Int? {
        guard let existingLine = lines.first(where: { $0.product.identifier == product.identifier }) else {
            return nil
        }

        return existingLine.quantity
    }
}
