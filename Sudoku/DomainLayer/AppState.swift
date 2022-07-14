//
//  AppState.swift
//  Sudoku
//
//  Created by Rodion on 21.12.2021.
//

import Foundation
import UDF

struct AppState: Equatable {
    var firstTabState: FirstTabState

    init(firstTabState: FirstTabState = .initial) {
        self.firstTabState = firstTabState
    }
}

extension AppState {
    static let initial = AppState()
}

extension AppState {
    static func reduce(_ state: inout AppState, with action: Action) {
        FirstTabState.reduce(&state.firstTabState, with: action)
    }
}
