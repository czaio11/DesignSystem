//
//  Typography.swift
//  DesignSystem
//
//  Created by Geovana Contine on 15/04/24.
//

import Foundation
import SwiftUI

enum Typography {
    case largeTitle
    case title
    case body
    case caption
}

extension Typography {
    var size: CGFloat {
        switch self {
        case .largeTitle: 32
        case .title: 20
        case .body: 15
        case .caption: 12
        }
    }
    
    var color: Color {
        switch self {
        case .largeTitle: .brandPrimary
        case .title: .labelPrimary
        case .body: .labelPrimary
        case .caption: .labelSecondary
        }
    }
    
    var weight: Font.Weight {
        switch self {
        case .largeTitle: .bold
        case .title: .bold
        case .body: .regular
        case .caption: .regular
        }
    }
}
