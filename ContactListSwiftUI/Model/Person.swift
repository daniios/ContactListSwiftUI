//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Даниил Чупин on 02.08.2023.
//

import Foundation

struct Person: Identifiable {
    let id = UUID()
    let firstName: String
    let lastName: String
    let email: String
    let phone: String

    var fullName: String {
        "\(firstName) \(lastName)"
    }
}
