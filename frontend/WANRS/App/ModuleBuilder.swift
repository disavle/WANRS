//
//  ModuleBuilder.swift
//  WANRS
//
//  Created by Dima Savelyev on 20.07.2022.
//

import UIKit

protocol Builder {
    static func createMainModule() -> UIViewController
}

class ModelBuilder: Builder {
    static func createMainModule() -> UIViewController {
        let model = CardTypeElement(id: 1, type: "Уровень 1")
        let view = MainViewController()
        let presenter = MainPresenter(view: view, cardType: model)
        view.presenter = presenter
        return view
    }
}
