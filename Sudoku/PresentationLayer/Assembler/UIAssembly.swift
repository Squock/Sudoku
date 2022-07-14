//
//  UIAssembly.swift
//  Sudoku
//
//  Created by Rodion on 19.12.2021.
//

import Foundation
import Swinject
import UDF

final class UIAssembly: Assembly {

    /*private func registerMainTabView(container: Container) {
        container.register(MainTabView.self) { resolver in
            let tabView = MainTabView(container: DIContainer.shared)
            return tabView
        }
    }*/

    private func registerFirstTabView(container: Container) {
        container.register(FirstTabViewController.self) { resolver in
            let store = DIContainer.shared.store
            let viewController = FirstTabViewController()
            //viewController.connect(to: store, state: \.firstTabState)
            return viewController
        }
    }

    func assemble(container: Container) {
        //registerMainTabView(container: container)
        registerFirstTabView(container: container)
    }
}
