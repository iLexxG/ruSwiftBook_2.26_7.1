//
//  Person.swift
//  ContactList
//
//  Created by Alex Golyshkov on 22.03.2022.
//

struct Person {
    var personName: String
    var persinSurname: String
    var personEmail: String
    var persnonPhone: String
    var personFullName: String
    
    static func getPersons() -> [Person] {
        var personsList: [Person] = []
        let shuffledNames = DataManager.namesList.shuffled()
        let shuffledSurnames = DataManager.surnamesList.shuffled()
        let shuffledEmails = DataManager.emailsList.shuffled()
        let shuffledPhones = DataManager.phonesList.shuffled()
        
        for item in 0...shuffledNames.count - 1 {
            personsList.append(Person(
                personName: shuffledNames[item],
                persinSurname: shuffledSurnames[item],
                personEmail: shuffledEmails[item],
                persnonPhone: shuffledPhones[item],
                personFullName: "\(shuffledNames[item]) \(shuffledSurnames[item])"
            )
            )
        }
        return personsList
    }
}
