//
//  ContentView.swift
//  VacationInVegas
//
//  Created by Kishan Singh on 13/08/24.
//

import SwiftUI

struct Symbol: View {
    // we have 7 different symbol effect
    // It will give life to your apple app
    // ios 18 
    @State private var shouldIBounce = false
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.tint)
                .symbolEffect(.bounce, value: true)
            Image(systemName: "paperplane")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.tint)
                .symbolEffect(.pulse, value: true)
            Image(systemName: "wifi")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.tint)
                .symbolEffect(.variableColor, value: true)
            Image(systemName: "globe")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.tint)
        }
        .padding()
    }
}

#Preview {
    Symbol()
}
