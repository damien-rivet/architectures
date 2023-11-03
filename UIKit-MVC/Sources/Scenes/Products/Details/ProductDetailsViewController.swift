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

import UIKit
import Entities

final class ProductDetailsViewController: UIViewController {

    // MARK: - Properties

    private let product: Product

    // MARK: - Initialisation

    init(product: Product) {
        self.product = product

        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Functions

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        setupLayout()
    }

    func setupViews() {
        title = product.name

        view.backgroundColor = .systemGroupedBackground
    }

    func setupLayout() {

    }
}
