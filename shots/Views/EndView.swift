//
//  EndView.swift
//  shots
//
//  Created by Jane on 6/28/24.
//

import SwiftUI

struct EndView: View {
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Thanks for playing **Number of Shots**!")
            Text("This code lives in")
            Link(destination: URL(string: "https://github.com/janeladaban/shots")!, 
                 label: {
                Text("github.com/janeladaban/shots")
                    .underline()
            })
        }
        .font(.title2)
    }
}

#Preview {
    EndView()
}
