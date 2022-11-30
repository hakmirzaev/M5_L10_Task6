//
//  M5_L10_Task6App.swift
//  M5_L10_Task6
//
//  Created by Bekhruz Hakmirzaev on 30/11/22.
//

import SwiftUI

@main
struct M5_L10_Task6App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
