//
//  DetailListViewController.swift
//  ContactList
//
//  Created by Alex Golyshkov on 22.03.2022.
//

import UIKit

class DetailListViewController: UITableViewController {
    var contactList: [Person]!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contactList[section].personFullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentCell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let currentContact = contactList[indexPath.section]
        var content = currentCell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.image = UIImage(systemName: "phone")
            content.text = currentContact.persnonPhone
        } else if indexPath.row == 1 {
            content.image = UIImage(systemName: "mail")
            content.text = currentContact.personEmail
        }
        
        currentCell.contentConfiguration = content
        return currentCell
    }
}
