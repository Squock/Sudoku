//
//  MainCoordinator.swift
//  Sudoku
//
//  Created by Rodion on 18.12.2021.
//

import Foundation
import SwiftUI
import UDF
import Swinject

protocol CoordinatorFactoryProtocol {
    func makeFirstTabCoordinator() -> FirstTabCoordinator
    func makeSecondTabCoordinator() -> SecondTabCoordinator
    func makeThirdTabCoordinator() -> ThirdTabCoordinator
}

final class CoordinatorFactory: Coordinator {
    private let store: Store<AppState>
    private let assembler: Assembler
    private let persistenceController: PersistenceController
    private let sceneFactory: SceneFactoryProtocol

    init(store: Store<AppState>, assembler: Assembler, persistenceController: PersistenceController, sceneFactory: SceneFactoryProtocol) {
        self.store = store
        self.assembler = assembler
        self.persistenceController = persistenceController
        self.sceneFactory = sceneFactory
    }

    func start() {
        let firstTabCoordinator = makeFirstTabCoordinator()
        let secondTabCoordinator = makeSecondTabCoordinator()
        let thirdTabCoordinator = makeThirdTabCoordinator()
        firstTabCoordinator.start()
        secondTabCoordinator.start()
        thirdTabCoordinator.start()
    }
}

extension CoordinatorFactory: CoordinatorFactoryProtocol {
    func makeFirstTabCoordinator() -> FirstTabCoordinator {
        let coordinator = FirstTabCoordinator(store: store, persistenceController: persistenceController)
        return coordinator
    }
    
    func makeSecondTabCoordinator() -> SecondTabCoordinator {
        let coordinator = SecondTabCoordinator(store: store)
        return coordinator
    }
    
    func makeThirdTabCoordinator() -> ThirdTabCoordinator {
        let coordinator = ThirdTabCoordinator(store: store)
        return coordinator
    }
}
