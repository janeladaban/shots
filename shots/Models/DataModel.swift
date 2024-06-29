//
//  Questions.swift
//  shots
//
//  Created by Jane on 6/29/24.
//

import Foundation

struct QuestionData: Identifiable {
    var id: Int
    var question: String
}

class DataModel: NSObject {
    static let data: [QuestionData] = [
        QuestionData(id: 1, question: "countries you've been to"),
        QuestionData(id: 2, question: "siblings you have"),
        QuestionData(id: 3, question: "tattoos you have")
    ]
    
    static let testData: [QuestionData] = [
        QuestionData(id: 0, question: "are you cute or what?!")
    ]
    
    public static var dataCounter: Int = 1
}
