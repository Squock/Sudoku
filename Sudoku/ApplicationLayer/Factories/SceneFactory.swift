//
//  SceneFactory.swift
//  Sudoku
//
//  Created by Rodion on 18.12.2021.
//

import Foundation
import UIKit
import UDF

final class SceneFactory {
    private let store: Store<AppState>
    var rootViewController: MainTabView?
    var firstTabView: FirstTabView?

    init(store: Store<AppState>) {
        self.store = store
    }
}

extension SceneFactory: SceneFactoryProtocol {
    func makeRootController() -> MainTabView {
        let rootViewController = MainTabView(store: store, sceneFactory: self)
        self.rootViewController = rootViewController
        return rootViewController
    }

    func makeFirstController() -> FirstTabView {
        let firstTabView = FirstTabView(store: store)
        let component = FirstTabViewComponent(firstTabView: firstTabView, store: store)
        let connector = FirstTabViewConnector()
        component.connect(to: store, by: connector, state: \.firstTabState)
        self.firstTabView = firstTabView
        return firstTabView
    }
}
