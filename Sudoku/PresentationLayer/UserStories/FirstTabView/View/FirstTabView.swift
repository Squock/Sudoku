//
//  FirstTabView.swift
//  Sudoku
//
//  Created by Rodion on 20.12.2021.
//

import SwiftUI
import UDF

struct FirstTabView: View {
    var store: Store<AppState>

    var props = Props.initial {
        didSet {
            render()
        }
    }
    var disposer = Disposer()

    init(store: Store<AppState>) {
        self.store = store
    }

    var body: some View {
        Button("Button title") {
            store.dispatch(AppAction.FirstTabAction.buttonTapped)
        }
        //Text(props.titleText)
    }

    func render() {
        print("PROPS", props.titleText)
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView(store: .init(state: .initial, reducer: AppState.reduce(_:with:)))
    }
}
