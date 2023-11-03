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

final class ProductsViewController: UIViewController {

    // MARK: - Constants

    private let products = [
        Product(identifier: UUID(), name: "Product 1", shortDescription: "The first product", fullDescription: "This is the first product."),
        Product(identifier: UUID(), name: "Product 2", shortDescription: "The second product", fullDescription: "This is the second product."),
    ]

    // MARK: - Properties

    private let tableView = UITableView(frame: CGRect.zero, style: .plain)

    private lazy var dataSource: ProductsTableViewDataSource = {
        let dataSource = ProductsTableViewDataSource(tableView: tableView)
        dataSource.delegate = self

        return dataSource
    }()

    // MARK: - Functions

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        setupLayout()

        dataSource.update(with: products)
    }

    func setupViews() {
        view.backgroundColor = .systemGroupedBackground

        tableView.backgroundColor = .clear
        tableView.dataSource = dataSource.makeDataSource()
        tableView.delegate = self
        tableView.register(ProductTableViewCell.self, forCellReuseIdentifier: ProductTableViewCell.reuseIdentifier)
        tableView.separatorStyle = .none

        view.addSubview(tableView)
    }

    func setupLayout() {
        [tableView].forEach { $0.translatesAutoresizingMaskIntoConstraints = false }

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            tableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            tableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
        ])
    }
}

// MARK: - UITableViewDelegate

extension ProductsViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let product = products[indexPath.row]

        navigationController?.pushViewController(ProductDetailsViewController(product: product), animated: true)
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        64
    }
}

// MARK: - ProductsTableViewDataSourceDelegate

extension ProductsViewController: ProductsTableViewDataSourceDelegate {

    func didTapAddButton(for productIdentifier: UUID) {
        print("Did tap button for product with ID === \(productIdentifier)")
    }
}
