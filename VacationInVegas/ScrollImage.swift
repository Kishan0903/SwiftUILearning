//
//  ScrollView.swift
//  VacationInVegas
//
//  Created by Kishan Singh on 13/08/24.
//

import SwiftUI

struct ScrollImage: View {
    var image: ImageResource
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .clipShape(.rect(cornerRadius: 20))
            .scrollTransition { content, phase in
                content.scaleEffect(phase.isIdentity ? 1 : 0.5)
                    .opacity(phase.isIdentity ? 1 : 0.5)
            }
    }
}

#Preview {
    ScrollImage(image: .bellagio)
}
