//
//  QuestionView.swift
//  shots
//
//  Created by Jane on 6/28/24.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack(spacing: 60) {
            // title
            HStack {
                Text("Number of Shots")
                    .font(.headline)
                    .foregroundColor(Color("AccentColor"))
                Spacer()
            }
            
            // TODO: Replace with a vstack that is centered in the screen
            Spacer()
            Spacer()
            
            // question
            VStack(alignment: .center, spacing: 20) {
                // texts
                Text("The")
                Text("number of countries you've been to ")
                    .font(.title3)
                    .bold()
                Text("is the number of shots you'll take")
                
                // button
                PrimaryButton(text: "Next")
                
                Spacer()
            }
        }
        .padding()
        .foregroundColor(Color("AccentColor"))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("BackgroundColor"))
    }
}

#Preview {
    QuestionView()
}
