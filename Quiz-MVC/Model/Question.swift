//
//  Question.swift
//  Quiz-MVC
//
//  Created by Jacob Skiba on 11/01/2023.
//

import Foundation

struct Question {
    let text: String
    var answer:[String] = []
    let correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        self.text = q
        self.answer = a
        self.correctAnswer = correctAnswer
    }
}
