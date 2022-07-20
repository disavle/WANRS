//
//  Card.swift
//  WANRS
//
//  Created by Dima Savelyev on 20.07.2022.
//

import Foundation

// MARK: - CardElement
struct CardElement: Codable {
    let id: Int?
    let text, type: String?
}

typealias Card = [CardElement]
