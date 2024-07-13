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

                    .sheet(isPresented: $isShow) {
                        VStack(spacing: 40) {
                            Text("How to play Number of Shots")
                                .extensionQuestion()
                            
                            Text("""
                            1. Begin with the wisest (eldest) among us.
                            2. Tap on "Let's find out" button.
                            3. Read out the prompt for all to hear.
                            4. Take your shots like a champion!
                            5. Share your tales and let them in on your secrets.
                            6. Pass the torch to the right-hand comrade.
                            7. Repeat until everyone knows a little more about everyone.
                            """)
                                                        
                            Button("Dismiss") {
                                isShow = false
                            }
                            
                            .presentationDetents([ .medium, .medium])
                            .presentationBackground(.thinMaterial)
                        }
                        .padding()
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
