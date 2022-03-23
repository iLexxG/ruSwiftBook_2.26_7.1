//
//  ViewController.swift
//  ContactList
//
//  Created by Alex Golyshkov on 22.03.2022.
//

import UIKit

class CompactListViewController: UITableViewController {
    var contactList = Person.getPersons()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentCell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let currentContact = contactList[indexPath.row]
        var content = currentCell.defaultContentConfiguration()
        
        content.text = currentContact.personFullName
        currentCell.contentConfiguration = content
        
        return currentCell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailContactVC = segue.destination as? DetailContactViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailContactVC.contactDetail = contactList[indexPath.row]
    }
}
