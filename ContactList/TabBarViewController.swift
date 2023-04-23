//
//  TabBarViewController.swift
//  ContactList
//
//  Created by MikhaiL on 22.04.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    private func setupViewController() {
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let sectionVC = viewControllers?.last as? SectionTableViewController else { return }
        
        let persons = Person.getContactList()
        contactListVC.persons = persons
        sectionVC.persons = persons
    }
}
