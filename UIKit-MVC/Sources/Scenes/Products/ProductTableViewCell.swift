//
// Copyright (C) 2023 Damien Rivet

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

import UIKit
import Entities

final class ProductTableViewCell: UITableViewCell {

    // MARK: - Constants

    static let reuseIdentifier = String(describing: ProductTableViewCell.self)

    // MARK: - Properties

    private var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black

        return label
    }()

    // MARK: - Functions

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupViews()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {
        contentView.addSubview(nameLabel)
    }

    private func setupLayout() {
        [nameLabel].forEach { $0.translatesAutoresizingMaskIntoConstraints = false }

        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            nameLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 8),
            nameLabel.heightAnchor.constraint(equalToConstant: 21),
            nameLabel.widthAnchor.constraint(equalToConstant: 128)
        ])
    }

    func configure(for product: Product) {
        nameLabel.text = product.name
    }
}
