//
//  ScrollView.swift
//  VacationInVegas
//
//  Created by Kishan Singh on 13/08/24.
//

import SwiftUI

struct Scrolling: View {
   
    var body: some View {
        ScrollView {
            VStack(content: {
                ScrollImage(image: .bellagio)
                ScrollImage(image: .excalibur)
                ScrollImage(image: .luxor)
                ScrollImage(image: .paris)
                ScrollImage(image: .stratosphere)
                ScrollImage(image: .treasureisland)
            }).padding(10)
        }
    }
}

#Preview {
    Scrolling()
}
