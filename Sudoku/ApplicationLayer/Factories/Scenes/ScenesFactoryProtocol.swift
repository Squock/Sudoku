//
//  ScenesFactoryProtocol.swift
//  Sudoku
//
//  Created by Rodion on 01.07.2022.
//

import Foundation
import UIKit
import SwiftUI

protocol SceneFactoryProtocol {
    var rootViewController: MainTabView? { get }
    var firstTabView: FirstTabView? { get }

    func makeRootController() -> MainTabView
    func makeFirstController() -> FirstTabView
}
