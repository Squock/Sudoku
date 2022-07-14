//
//  SudokuEnvironment.swift
//  Sudoku
//
//  Created by Rodion on 21.12.2021.
//

import Foundation
import UDF

protocol DIContainerFactory {
    var store: Store<AppState> { get }
    //var sudokuDI: SudokuDI { get }
}

struct DIContainer {
    //var sudokuDI: SudokuDI
    var store: Store<AppState>
    static var shared = DIContainer()
    
    init(store: Store<AppState> = Store(state: AppState.initial, reducer: AppState.reduce(_:with:))) {
        //self.sudokuDI = sudokuDI
        self.store = store
    }
}

extension DIContainer: DIContainerFactory {}
