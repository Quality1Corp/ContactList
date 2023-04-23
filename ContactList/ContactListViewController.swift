//
//  ContactListViewController.swift
//  ContactList
//
//  Created by MikhaiL on 23.04.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Person", for: indexPath)
        cell.accessoryType = .disclosureIndicator
        
        var contact = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        contact.text = person.fullName
        cell.contentConfiguration = contact
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let contactDetailsVC = segue.destination as? ContactDetailsViewController else { return }
            contactDetailsVC.person = persons[indexPath.row]
        }
    }
}
