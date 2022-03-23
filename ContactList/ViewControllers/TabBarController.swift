//
//  TabController.swift
//  ContactList
//
//  Created by Alex Golyshkov on 22.03.2022.
//

import UIKit

class TabBarController: UITabBarController {
    let contactList = Person.getPersons()

    override func viewDidLoad() {
        passModel()
    }

    private func passModel() {
        guard let viewControllers = viewControllers else { return }

        for viewController in viewControllers {
            if let detailListVC = viewController as? DetailListViewController {
                detailListVC.contactList = contactList
            } else if let compactListVC = viewController as? CompactListViewController {
                compactListVC.contactList = contactList
            }
        }
    }
}
