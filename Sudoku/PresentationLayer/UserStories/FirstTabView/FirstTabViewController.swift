//
//  FirstTabViewController.swift
//  Sudoku
//
//  Created by Rodion on 25.12.2021.
//

import UIKit
import UDF

class FirstTabViewController: UIViewController, Component {
    var queue: DispatchQueue = .main
    
    var props: FirstTabView.Props = Props.initial {
        didSet {
            render()
        }
    }
    
    var disposer: Disposer = Disposer()
    //var tabView = FirstTabView()

    override func viewDidLoad() {
        super.viewDidLoad()
        render()
    }

    private func render() {
        //tabView.props = props
        //tabView.render()
    }
}
