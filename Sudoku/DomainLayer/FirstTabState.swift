//
//  FirstTabState.swift
//  Sudoku
//
//  Created by Rodion on 25.12.2021.
//

import Foundation
import UDF

struct FirstTabState: Equatable {
    var status: FirstTabView.Status
}

extension FirstTabState {
    static let initial = FirstTabState(status: .load)
}

extension FirstTabState {
    static func reduce(_ state: inout FirstTabState, with action: Action) {
        (action as? AppAction.FirstTabAction).map { reduce(&state, with: $0) }
    }

    private static func reduce(
        _ state: inout FirstTabState,
        with action: AppAction.FirstTabAction
    ) {
        switch action {
        case .open:
            print("First tab action")
        case .buttonTapped:
            state.status = .error
        }
    }
}
