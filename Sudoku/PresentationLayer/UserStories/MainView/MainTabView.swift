//
//  MainTabView.swift
//  Sudoku
//
//  Created by Rodion on 18.12.2021.
//

import SwiftUI
import UDF

struct MainTabView: View {
    private let store: Store<AppState>
    private let sceneFactory: SceneFactoryProtocol

    init(store: Store<AppState>, sceneFactory: SceneFactoryProtocol) {
        self.store = store
        self.sceneFactory = sceneFactory
    }

    var body: some View {
        TabView {
          /*NavigationView {
              //container.sudokuDI.firstTabView().tabView
          }*/
          sceneFactory.makeFirstController().tabItem {
              Text("Главная")
              Image(systemName: "phone.fill")
          }
           Text("The content of the first view")
              .tabItem {
                 Image(systemName: "phone.fill")
                 Text("Личный кабинет")
              }
            Text("")
               .tabItem {
                  Image(systemName: "phone.fill")
                  Text("Настройки")
              }
        }.onAppear(perform: viewDidLoad)
    }

    private func viewDidLoad() {
        //store.dispatch(AppAction.FirstTabAction.open)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView(store: .init(state: .initial, reducer: { _, _ in
            print("test")
        }), sceneFactory: SceneFactory(store: .init(state: .initial, reducer: { _, _ in
            print("test")
        })))
    }
}
