//
//  CardType.swift
//  WANRS
//
//  Created by Dima Savelyev on 20.07.2022.
//

import Foundation

// MARK: - CardTypeElement
struct CardTypeElement: Codable {
    let id: Int
    let type: String
}

typealias CardType = [CardTypeElement]
