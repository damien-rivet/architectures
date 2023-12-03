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
import Core
import Entities

protocol ProductsTableViewDataSourceDelegate: AnyObject {

    func didTapAddButton(for productIdentifier: UUID)
    func didTapRemoveButton(for productIdentifier: UUID)
}

final class ProductsTableViewDataSource {

    // MARK: - Constants

    enum ProductTableViewSection {
        case main
    }

    // MARK: - Properties

    private let tableView: UITableView

    private (set) var localDataSource: UITableViewDiffableDataSource<ProductTableViewSection, Product>?

    weak var delegate: ProductsTableViewDataSourceDelegate?

    // MARK: - Initialisation

    init(tableView: UITableView) {
        self.tableView = tableView
    }

    // MARK: - Functions

    func makeDataSource() -> UITableViewDiffableDataSource<ProductTableViewSection, Product> {
        let dataSource = UITableViewDiffableDataSource<ProductTableViewSection, Product>(tableView: tableView) { tableView, indexPath, product in
            let cell = tableView.dequeueReusableCell(withIdentifier: ProductTableViewCell.reuseIdentifier, for: indexPath) as? ProductTableViewCell

            cell?.configure(for: product, quantity: UserSessionManager.shared.userSession.cart.count(of: product))
            cell?.delegate = self

            return cell
        }

        localDataSource = dataSource

        return dataSource
    }

    func update(with products: [Product]) {
        var snapshot = NSDiffableDataSourceSnapshot<ProductTableViewSection, Product>()
        snapshot.appendSections([ProductTableViewSection.main])
        snapshot.appendItems(products, toSection: .main)

        localDataSource?.apply(snapshot, animatingDifferences: true)
    }
}

// MARK: - ProductTableViewCellDelegate

extension ProductsTableViewDataSource: ProductTableViewCellDelegate {

    func didTapAddButton(for productIdentifier: UUID) {
        delegate?.didTapAddButton(for: productIdentifier)
    }

    func didTapRemoveButton(for productIdentifier: UUID) {
        delegate?.didTapRemoveButton(for: productIdentifier)
    }
}
