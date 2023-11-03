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

public struct Product {

    // MARK: - Constants

    public let identifier: UUID
    public let name: String
    public let shortDescription: String
    public let fullDescription: String

    // MARK: - Initialisation

    public init(identifier: UUID, name: String, shortDescription: String, fullDescription: String) {
        self.identifier = identifier
        self.name = name
        self.shortDescription = shortDescription
        self.fullDescription = fullDescription
    }
}

// MARK: - Hashable

extension Product: Hashable {

}
