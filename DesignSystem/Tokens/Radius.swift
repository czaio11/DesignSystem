//
//  Radius.swift
//  DesignSystem
//
//  Created by Geovana Contine on 15/04/24.
//

import Foundation

enum Radius {
    case none
    case small
    case large
}

extension Radius {
    var value: CGFloat {
        switch self {
        case .none: 0
        case .small: 4
        case .large: 16
        }
    }
}
