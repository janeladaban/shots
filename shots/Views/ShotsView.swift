//
//  ShotsView.swift
//  shots
//
//  Created by Jane on 6/29/24.
//

import SwiftUI

struct ShotsView: View {
    @State private var dataCounter = 0
    @State private var displayCount = 1
    @State private var hasNext = true
    @Binding var dataQuestions: [QuestionData]
        
    var body: some View {
        VStack {
            // header
            HStack {
                Text("Number of Shots")
                    .extensionHeaderTitle()
                Spacer()
                Text("\(displayCount) of \(dataQuestions.count)")
                    .extensionHeaderCount()
            }
            
            Spacer()
            
            VStack(spacing: 20) {
                if hasNext {
                    Text("The number of")
                    Text("\(dataQuestions[dataCounter].question)").extensionQuestion() // TODO: Fetch the questions in random order
                    Text("is the number of shots you'll take")
                    
                    Button(action: {
                        if dataCounter < (dataQuestions.count - 1) {
                            dataCounter += 1
                            displayCount += 1
                        } else {
                            hasNext = false
                        }
                    }) {
                        PrimaryButton(text: "Next")
                    }
                } else {
                    EndView()
                }
            }
            
            Spacer()
            Spacer()
        }
        .padding()
        .foregroundColor(Color("AccentColor"))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("BackgroundColor"))
        .navigationBarHidden(true)
    }
}

#Preview {
    ShotsView(dataQuestions: .constant(DataModel.testData))
}
