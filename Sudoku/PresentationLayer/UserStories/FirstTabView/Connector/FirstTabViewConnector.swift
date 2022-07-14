//
//  FirstTabViewConnector.swift
//  Sudoku
//
//  Created by Rodion on 21.12.2021.
//

import Foundation
import UDF

final class FirstTabViewConnector: Connector {
    
    typealias State = FirstTabState
    typealias Actions = AppAction.FirstTabAction
    typealias Props = FirstTabView.Props
    
    func stateToProps(state: FirstTabState, dispatcher: ActionDispatcher) -> Props {
        return Props(status: state.status, titleText: "Test")
    }
}
