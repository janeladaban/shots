//
//  ContentView.swift
//  shots
//
//  Created by Jane on 6/25/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing: 20) {
                // title
                Text("Number of Shots")
                    .extensionTitle()

                // subtitle
                Text("How well do you know your drinking buddies?")
                    .foregroundColor(Color("AccentColor"))
            }
            // button
            PrimaryButton(text: "Let's find out")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
        .background(Color("BackgroundColor"))
    }
}

#Preview {
    ContentView()
}
