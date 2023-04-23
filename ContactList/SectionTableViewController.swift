//
//  SectionTableViewController.swift
//  ContactList
//
//  Created by MikhaiL on 23.04.2023.
//

import UIKit

final class SectionTableViewController: UITableViewController {
    
    var persons: [Person] = []
    
    // MARK: - UITableViewDataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SectionPerson", for: indexPath)
        
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
            case 0:
                content.text = person.phone
                content.image = UIImage(systemName: Contacts.phone.rawValue)
            default:
                content.text = person.email
                content.image = UIImage(systemName: Contacts.email.rawValue)
        }
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
