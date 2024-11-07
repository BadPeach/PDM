//
//  BirthdaysApp.swift
//  lab_3
//
//  Created by Student @C03 on 07.11.2024.
//

import SwiftUI
import SwiftData


@main
struct BirthdaysApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Friend.self)
        }
    }
}
