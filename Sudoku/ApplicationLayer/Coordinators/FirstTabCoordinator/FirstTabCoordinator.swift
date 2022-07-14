//
//  FirstTabCoordinator.swift
//  Sudoku
//
//  Created by Rodion on 18.12.2021.
//

import Foundation
import UDF

final class FirstTabCoordinator: FirstTabCoordinatorFactory {
    private let store: Store<AppState>
    private let persistenceController: PersistenceController

    init(store: Store<AppState>, persistenceController: PersistenceController) {
        self.store = store
        self.persistenceController = persistenceController
    }

    func start() {
        print("First coordinator start")
    }
}
