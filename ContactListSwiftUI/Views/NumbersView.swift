//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Даниил Чупин on 02.08.2023.
//

import SwiftUI

struct NumbersView: View {
    private let dataManager = DataManager.shared

    var body: some View {
        NavigationView {
            List(dataManager.getAllPersons()) { person in
                Section(header: Text(person.fullName)) {
                    HStack {
                        Image(systemName: "envelope")
                            .foregroundColor(.blue)
                        Text(person.email)
                    }
                    HStack {
                        Image(systemName: "phone")
                            .foregroundColor(.blue)
                        Text(person.phone)
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView()
    }
}
