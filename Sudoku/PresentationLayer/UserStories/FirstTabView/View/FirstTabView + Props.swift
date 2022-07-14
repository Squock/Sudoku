//
//  FirstTabView + Props.swift
//  Sudoku
//
//  Created by Rodion on 21.12.2021.
//

import Foundation

extension FirstTabView {
    struct Props: Equatable {
        let status: Status
        let titleText: String
        
        static let initial = Props(
            status: .load, titleText: "Test123"
        )
    }

    public enum Status {
        case load
        case error
    }
}
