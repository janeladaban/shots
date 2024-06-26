//
//  ContentView.swift
//  shots
//
//  Created by Jane on 6/25/24.
//

import SwiftUI

struct ContentView: View {
    @State var data = DataModel.data
    
    var body: some View {
        HStack {
            NavigationView {
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
                    NavigationLink {
                        ShotsView(dataQuestions: $data)
                    } label: {
                        PrimaryButton(text: "Let's find out")
                    }
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
                .background(Color("BackgroundColor"))
            }
        }
    }
}

#Preview {
    ContentView()
}
