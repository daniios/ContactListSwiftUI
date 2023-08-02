//
//  DetailView.swift
//  ContactListSwiftUI
//
//  Created by Даниил Чупин on 02.08.2023.
//

import SwiftUI

struct DetailView: View {
    let person: Person

    var body: some View {
        Form {
            Section(header: Text(person.fullName).font(.title)) {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 160, height: 160)
                        .foregroundColor(.gray)
                    Spacer()
                }
            }

            Section(header: Text("Contact Information")) {
                ContactInfoRow(key: "Email", value: person.email)
                ContactInfoRow(key: "Phone", value: person.phone)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContactInfoRow: View {
    let key: String
    let value: String

    var body: some View {
        HStack {
            Text(key)
                .fontWeight(.bold)
            Spacer()
            Text(value)
                .foregroundColor(.gray)
        }
    }
}
