//
//  FirstTabViewComponent.swift
//  Sudoku
//
//  Created by Rodion on 02.07.2022.
//

import Foundation
import UDF

class FirstTabViewComponent: Component {
    private var firstTabView: FirstTabView
    private let store: Store<AppState>

    var props: FirstTabView.Props = Props.initial {
        didSet {
            render()
        }
    }
    
    var queue: DispatchQueue = .main
    
    var disposer: Disposer = Disposer()
    
    typealias Props = FirstTabView.Props
    
    init(firstTabView: FirstTabView, store: Store<AppState>) {
        self.firstTabView = firstTabView
        self.store = store
        self.firstTabView.store = store
        render()
    }

    func render() {
        firstTabView.props = props
    }
}
