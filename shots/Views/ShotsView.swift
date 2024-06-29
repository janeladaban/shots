//
//  ShotsView.swift
//  shots
//
//  Created by Jane on 6/29/24.
//

import SwiftUI

struct ShotsView: View {
    @Binding var dataQuestions: [QuestionData]
    
    var body: some View {
        VStack {
            // title
            HStack {
                Text("Number of Shots")
                    .font(.headline)
                    .foregroundColor(Color("AccentColor"))
                Spacer()
                Text("\(DataModel.dataCounter) of \($dataQuestions.count)")
                    .font(.subheadline)
                    .foregroundColor(Color("AccentColor"))
            }
            
            // question
            QuestionView(dataQuestion: $dataQuestions[0])
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
