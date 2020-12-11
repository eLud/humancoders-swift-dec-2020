//
//  CoreDataDemoApp.swift
//  CoreDataDemo
//
//  Created by Ludovic Ollagnier on 11/12/2020.
//

import SwiftUI

@main
struct CoreDataDemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
