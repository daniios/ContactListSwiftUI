//
//  ContactListSwiftUIApp.swift
//  ContactListSwiftUI
//
//  Created by Даниил Чупин on 02.08.2023.
//

import SwiftUI

@main
struct ContactListSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("Contacts")
                    }
                NumbersView()
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Numbers")
                    }
            }
        }
    }
}
