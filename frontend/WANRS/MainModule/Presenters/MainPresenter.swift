//
//  MainPresenter.swift
//  WANRS
//
//  Created by Dima Savelyev on 20.07.2022.
//

import Foundation

// MARK: - AnyObject для weak ссылок
protocol MainViewProtocol: AnyObject {
    func setLevelsChoice(cardsLevels: String)
}

protocol MainViewPresenterProtocol: AnyObject {
    init (view: MainViewProtocol, cardType: CardTypeElement)
    func showLevelsChoice()
}

class MainPresenter: MainViewPresenterProtocol {
    let view: MainViewProtocol
    let cardType: CardTypeElement
    required init(view: MainViewProtocol, cardType: CardTypeElement) {
        self.view = view
        self.cardType = cardType
    }
    func showLevelsChoice() {
        let cardsLevel = self.cardType.type
        self.view.setLevelsChoice(cardsLevels: cardsLevel)
    }
}
