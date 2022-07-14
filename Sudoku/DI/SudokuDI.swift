//
//  SudokuDI.swift
//  Sudoku
//
//  Created by Rodion on 18.12.2021.
//

import Foundation
import Swinject
import UDF

final class SudokuDI {
    let assembler: Assembler
    private let store: Store<AppState>
    private let app: SudokuApp
    private let sceneFactory: SceneFactoryProtocol

    init(store: Store<AppState>, app: SudokuApp, sceneFactory: SceneFactoryProtocol) {
        self.store = store
        self.app = app
        self.sceneFactory = sceneFactory
        let assemblies: [Assembly] = [SudokuAssembly(), UIAssembly()]
        assembler = Assembler(assemblies)
    }

    func connect(to store: Store<AppState>) {
        guard let firstTabView = sceneFactory.firstTabView else { return }
        let component = FirstTabViewComponent(firstTabView: firstTabView, store: store)
        let connector = FirstTabViewConnector()
        component.connect(to: store, by: connector, state: \.firstTabState)
    }
}
