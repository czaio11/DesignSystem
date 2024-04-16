//
//  DSText.swift
//  DesignSystem
//
//  Created by Geovana Contine on 15/04/24.
//

import SwiftUI

struct DSText: View {
    
    private let text: String
    private let typography: Typography
    
    init(_ text: String, typography: Typography) {
        self.text = text
        self.typography = typography
    }
    
    var body: some View {
        Text(text)
            .font(.system(size: typography.size))
            .fontWeight(typography.weight)
            .foregroundStyle(typography.color.swiftUI)
    }
}

#Preview {
    VStack {
        DSText("Large Title", typography: .largeTitle)
        DSText("Title", typography: .title)
        DSText("Body", typography: .body)
        DSText("Caption", typography: .caption)
    }
}


struct TypographyModifier: ViewModifier {
    
    let typography: Typography
    
    public func body(content: Content) -> some View {
        content
            .font(.system(size: typography.size))
            .fontWeight(typography.weight)
            .foregroundStyle(typography.color.swiftUI)
    }
}

extension View {
    func typography(_ typograph: Typography) -> some View {
        modifier(TypographyModifier(typography: typograph))
    }
    
    // Example using modifier
    
}
