//
//  DetailContactViewController.swift
//  ContactList
//
//  Created by Alex Golyshkov on 22.03.2022.
//

import UIKit

class DetailContactViewController: UIViewController {
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contactDetail: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = contactDetail.personFullName
        
        phoneNumberLabel.text = "Phone: \(contactDetail.persnonPhone)"
        emailLabel.text = "Email: \(contactDetail.personEmail)"
    }
}
