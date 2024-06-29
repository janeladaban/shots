//
//  QuestionView.swift
//  shots
//
//  Created by Jane on 6/28/24.
//

import SwiftUI

struct QuestionView: View {
    @Binding var dataQuestion: QuestionData
    
    var body: some View {
        VStack(spacing: 60) {
            // TODO: Replace with a VStack that is centered in the screen
            Spacer()
            Spacer()
            
            // question
            VStack(alignment: .center, spacing: 20) {
                // texts
                Text("The")
                Text("\(dataQuestion.question)")
                    .font(.title3)
                    .bold()
                Text("is the number of shots you'll take")
                
                // button
                PrimaryButton(text: "Next")
                
                Spacer()
            }
        }
    }
}

#Preview {
    QuestionView(dataQuestion: .constant(DataModel.testData[0]))
}
