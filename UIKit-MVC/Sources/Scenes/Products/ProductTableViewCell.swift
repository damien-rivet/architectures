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

protocol ProductTableViewCellDelegate: AnyObject {

    // MARK: - Functions

    func didTapAddButton(for productIdentifier: UUID)
}

final class ProductTableViewCell: UITableViewCell {

    // MARK: - Constants

    static let reuseIdentifier = String(describing: ProductTableViewCell.self)

    // MARK: - Properties

    private var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black

        return label
    }()

    private var addButton: UIButton = {
        let button = UIButton(configuration: .plain())
        button.setImage(UIImage(systemName: "cart.badge.plus"), for: .normal)

        return button
    }()

    private var productIdentifier: UUID?

    weak var delegate: ProductTableViewCellDelegate?

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

        addButton.addAction(UIAction(handler: { [unowned self] _ in
            if let productIdentifier {
                delegate?.didTapAddButton(for: productIdentifier)
            }
        }), for: .touchUpInside)

        contentView.addSubview(addButton)
    }

    private func setupLayout() {
        [nameLabel, addButton].forEach { $0.translatesAutoresizingMaskIntoConstraints = false }

        NSLayoutConstraint.activate([
            nameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            nameLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 8),
            nameLabel.heightAnchor.constraint(equalToConstant: 21),
            nameLabel.widthAnchor.constraint(equalToConstant: 128),

            addButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            addButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -8),
            addButton.heightAnchor.constraint(equalToConstant: 32),
            addButton.widthAnchor.constraint(equalToConstant: 32),
        ])
    }

    func configure(for product: Product) {
        productIdentifier = product.identifier
        nameLabel.text = product.name
    }
}
