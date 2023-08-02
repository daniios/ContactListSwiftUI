//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Даниил Чупин on 02.08.2023.
//

import SwiftUI

struct ContentView: View {
    private let dataManager = DataManager.shared

    var body: some View {
        NavigationView {
            List(dataManager.getAllPersons()) { person in
                NavigationLink(destination: DetailView(person: person)) {
                    Text(person.fullName)
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
