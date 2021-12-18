//
//  SudokuApp.swift
//  Sudoku
//
//  Created by Rodion on 18.12.2021.
//

import SwiftUI

@main
struct SudokuApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
