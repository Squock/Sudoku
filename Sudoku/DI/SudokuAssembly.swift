//
//  SudokuAssembly.swift
//  Sudoku
//
//  Created by Rodion on 18.12.2021.
//

import Foundation
import Swinject

final class SudokuAssembly: Assembly {

    /*private func registerMainCoordinator(container: Container) {
        container.register(MainCoordinator.self) { resolver in
            let coordinatorFactory = SceneFactory()
            let coordinator = MainCoordinator.init(coordinatorFactory: coordinatorFactory)
            return coordinator
        }.inObjectScope(.container)
    }*/

    /*private func registerFirstTabCoordinator(container: Container) {
        container.register(FirstTabCoordinator.self) { resolver in
            let sudokuDI = DIContainer.shared
            let coordinator = FirstTabCoordinator(container: sudokuDI)
            return coordinator
        }.inObjectScope(.container)
    }

    private func registerSecondTabCoordinator(container: Container) {
        container.register(SecondTabCoordinator.self) { resolver in
            let sudokuDI = DIContainer.shared
            let coordinator = SecondTabCoordinator(container: sudokuDI)
            return coordinator
        }.inObjectScope(.container)
    }

    private func registerThirdTabCoordinator(container: Container) {
        container.register(ThirdTabCoordinator.self) { resolver in
            let sudokuDI = DIContainer.shared
            let coordinator = ThirdTabCoordinator(container: sudokuDI)
            return coordinator
        }.inObjectScope(.container)
    }*/

    func assemble(container: Container) {
        //registerMainCoordinator(container: container)
        //registerFirstTabCoordinator(container: container)
        //registerSecondTabCoordinator(container: container)
        //registerThirdTabCoordinator(container: container)
    }
}
