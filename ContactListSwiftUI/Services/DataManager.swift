//
//  DataManager.swift
//  ContactListSwiftUI
//
//  Created by Даниил Чупин on 02.08.2023.
//

import Foundation

final class DataManager {
    static let shared = DataManager()
    
    private var firstNames = ["John", "Alice", "Michael", "Emma",
                              "David", "Olivia", "James", "Sophia"]
    private var lastNames = ["Smith", "Johnson", "Williams", "Jones",
                             "Brown", "Davis", "Miller"]
    private var emails = ["john@example.com", "alice@example.com",
                          "michael@example.com", "emma@example.com",
                          "david@example.com", "olivia@example.com",
                          "james@example.com", "sophia@example.com"]
    private var phones = ["+71234567890", "+79876543210", "+75555555555",
                          "+79999999999", "+77777777777", "+78888888888",
                          "+76666666666", "+74444444444"]

    private lazy var allPersons: [Person] = {
        var persons: [Person] = []
        while let person = generateUniquePerson() {
            persons.append(person)
        }
        return persons
    }()

    private init() {}
    
    func getAllPersons() -> [Person] {
        return allPersons
    }
    
    private func generateUniquePerson() -> Person? {
        guard let firstName = firstNames.popLast(),
              let lastName = lastNames.popLast(),
              let email = emails.popLast(),
              let phone = phones.popLast() else {
            return nil
        }
        
        firstNames.shuffle()
        lastNames.shuffle()
        emails.shuffle()
        phones.shuffle()
        
        return Person(firstName: firstName,
                      lastName: lastName,
                      email: email,
                      phone: phone)
    }
}
