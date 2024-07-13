//
//  ContentView.swift
//  shots
//
//  Created by Jane on 6/25/24.
//

import SwiftUI

struct ContentView: View {
    @State var data = DataModel.data
    @State private var isShow = false
    
    var body: some View {
        VStack {
            NavigationView {
                VStack(spacing: 40) {
                    
                    // title + subtitle
                    VStack(spacing: 20) {
                        Text("Number of Shots")
                            .extensionTitle()
                        
                        Text("How well do you know your drinking buddies?")
                            .foregroundColor(Color("AccentColor"))
                    }
                    
                    // let's find out
                    NavigationLink {
                        ShotsView(dataQuestions: $data)
                    } label: {
                        PrimaryButton(text: "Let's find out")
                    }
                    
                    // how to play
                    Button("How to Play", systemImage: "info.circle") {
                        isShow = true
                    }
                    // TODO: Change the background color of the sheet
                    // TODO: Add instructions
                    .sheet(isPresented: $isShow) {
                        VStack(spacing: 40) {
                            Text("How to play Number of Shots")
                            
                            Button("Dismiss") {
                                isShow = false
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
                .background(Color("BackgroundColor"))
            }
            .navigationBarHidden(true)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
        .background(Color("BackgroundColor"))
    }
}

#Preview {
    ContentView()
}
