//
//  DSButton.swift
//  DesignSystem
//
//  Created by Geovana Contine on 15/04/24.
//

import SwiftUI

struct DSButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            DSText(title, typography: .title)
                .frame(maxWidth: .infinity, maxHeight: 48)
        }
        .background(Color.brandPrimary.swiftUI)
        .cornerRadius(Radius.small.value)
    }
}

#Preview {
    DSButton(title: "Button") {}
}
