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
import Localization

final class TabBarController: UITabBarController {

    // MARK: - Functions

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.isTranslucent = true

        let productsNavigationController = UINavigationController(rootViewController: ProductsViewController())
        productsNavigationController.tabBarItem = UITabBarItem(title: LocalizedString.localizedString(for: "tabs.products"), image: .init(systemName: "basket"), tag: 0)

        let cartNavigationController = UINavigationController(rootViewController: CartViewController())
        cartNavigationController.tabBarItem = UITabBarItem(title: LocalizedString.localizedString(for: "tabs.cart"), image: .init(systemName: "cart"), tag: 1)

        let ordersNavigationController = UINavigationController(rootViewController: OrdersViewController())
        ordersNavigationController.tabBarItem = UITabBarItem(title: LocalizedString.localizedString(for: "tabs.orders"), image: .init(systemName: "archivebox"), tag: 2)

        setViewControllers([productsNavigationController, cartNavigationController, ordersNavigationController], animated: false)
    }
}
