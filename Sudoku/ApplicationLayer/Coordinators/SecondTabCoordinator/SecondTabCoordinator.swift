//
//  SecondTabCoordinator.swift
//  Sudoku
//
//  Created by Rodion on 18.12.2021.
//

import Foundation
import UDF

final class SecondTabCoordinator: SecondTabCoordinatorFactory {
    private let store: Store<AppState>

    init(store: Store<AppState>) {
        self.store = store
    }

    func start() {
        print("Second coordinator start")
    }
}
