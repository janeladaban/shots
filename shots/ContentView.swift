//
//  ContentView.swift
//  shots
//
//  Created by Jane on 6/25/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    Image(systemName: "wineglass")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                        .padding(.bottom, 20)
                    
                    NavigationLink(destination: QuestionsView()) {
                        Text("Start taking shots!")
                            .font(.title2)
                    }
                }
            }
            .navigationBarBackButtonHidden()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
