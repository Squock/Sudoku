//
//  SudokuApp.swift
//  Sudoku
//
//  Created by Rodion on 18.12.2021.
//

import SwiftUI
import UDF

@main
struct SudokuApp: App {
    let persistenceController = PersistenceController.shared
    let sceneFactory: SceneFactoryProtocol
    //let container = DIContainer.shared

    init() {
        let store = Store(state: AppState.initial, reducer: AppState.reduce(_:with:))
        sceneFactory = SceneFactory(store: store)
        _ = SudokuDI(store: store, app: self, sceneFactory: sceneFactory)
    }

    var body: some Scene {
        WindowGroup {
            sceneFactory.makeRootController().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
