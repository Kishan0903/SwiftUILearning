//
//  VacationInVegasApp.swift
//  VacationInVegas
//
//  Created by Kishan Singh on 13/08/24.
//

import SwiftUI

@main
struct VacationInVegasApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Place.self)
    }
}
