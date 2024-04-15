//
//  DSCallToAction.swift
//  DesignSystem
//
//  Created by Geovana Contine on 15/04/24.
//

import SwiftUI

struct DSCallToAction: View {
    
    let title: String
    let message: String
    let callToAction: String
    
    var body: some View {
        VStack {
            DSText(title, typography: .title)
                .padding(.bottom, 8)
            
            DSText(message, typography: .body)
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
            
            DSButton(title: callToAction) {
                //
            }
        }
        .padding(32)
        .background(Color.backgroundSecondary.swiftUI)
        .cornerRadius(Radius.large.value)
        .padding()
    }
}

#Preview {
    DSCallToAction(
        title: "New Feature!",
        message: "You were selected to be a beta tester of our brand new feature, please check and send us feedback.",
        callToAction: "Download"
    )
}
