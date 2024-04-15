//
//  DSHeader.swift
//  DesignSystem
//
//  Created by Geovana Contine on 15/04/24.
//

import SwiftUI

struct DSHeader: View {
    
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack(alignment: .leading) {
            DSText(title, typography: .title)
            DSText(subtitle, typography: .body)
        }
    }
}

#Preview {
    VStack {
        DSHeader(title: "Title", subtitle: "Subtitle")
    }
}
