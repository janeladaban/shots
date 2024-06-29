//
//  ShotsView.swift
//  shots
//
//  Created by Jane on 6/29/24.
//

import SwiftUI

struct ShotsView: View {
    @State private var dataCounter = 0
    @State private var isShowButton = true
    @Binding var dataQuestions: [QuestionData]
    
    var body: some View {
        VStack {
            // title
            HStack {
                Text("Number of Shots")
                    .font(.headline)
                    .foregroundColor(Color("AccentColor"))
                Spacer()
                Text("\(dataCounter) of \(dataQuestions.count)") // TODO: Fix dataCounter and make it start at 1
                    .font(.subheadline)
                    .foregroundColor(Color("AccentColor"))
            }
            
            Spacer()
            
            VStack {
                if isShowButton {
                    Text("The")
                    Text("\(dataQuestions[dataCounter].question)")
                        .font(.title3)
                        .bold()
                    Text("is the number of shots you'll take")
                    
                    Button(action: {
                        // Move to the next element, if not at the end
                        if dataCounter < dataQuestions.count - 1 {
                            dataCounter += 1
                        } else {
                            isShowButton = false
                        }
                    }) {
                        PrimaryButton(text: "Next")
                    }
                } else {
                    EndView()
                }
            }
            
            // TODO: Remove these spacers and center the VStack
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
