//
//  Questions.swift
//  shots
//
//  Created by Jane on 6/29/24.
//

import Foundation

struct QuestionData: Identifiable, Hashable {
    var id: Int
    var question: String
}

class DataModel: NSObject {
    static let data: [QuestionData] = [
        QuestionData(id: 1, question: "countries you've been to"),
        QuestionData(id: 2, question: "siblings you have"),
        QuestionData(id: 3, question: "NFL/MLB/NBA games you've been to"),
        QuestionData(id: 4, question: "tattoos you have"),
        QuestionData(id: 5, question: "languages you speak fluently"),
        QuestionData(id: 6, question: "pets you have"),
        QuestionData(id: 7, question: "Broadway shows you've seen live"),
        QuestionData(id: 8, question: "cars you own"),
        QuestionData(id: 9, question: "concerts you attended in the past year"),
        QuestionData(id: 10, question: "Disney parks you've visited"),
        QuestionData(id: 11, question: "marathons you've participated in"),
        QuestionData(id: 12, question: "lotteries you won")
    ]
    
    static let testData: [QuestionData] = [
        QuestionData(id: 0, question: "are you cute or what?!")
    ]
    
    public static var dataCounter: Int = 1
}
