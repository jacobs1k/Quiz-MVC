

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "What is the capital of France?", a: ["Paris", "Rome", "Berlin"], correctAnswer: "Paris"),
                Question(q: "Who wrote the novel 'Moby-Dick'?", a: ["Herman Melville", "Nathaniel Hawthorne", "Edgar Allan Poe"], correctAnswer: "Herman Melville"),
                Question(q: "How many planets are in our solar system?", a: ["8", "9", "10"], correctAnswer: "8"),
                Question(q: "Who painted the famous work 'The Starry Night'?", a: ["Vincent van Gogh", "Salvador Dali", "Claude Monet"], correctAnswer: "Vincent van Gogh"),
                Question(q: " What is the smallest country in the world by land area?", a: ["Vatican City", "Monaco", "Nauru"], correctAnswer: "Vatican City"),
                Question(q: "Who directed the film 'The Shawshank Redemption'?", a: ["Frank Darabont", "Martin Scorsese", "Steven Spielberg"], correctAnswer: "Frank Darabont"),
                Question(q: "What is the largest ocean on Earth?", a: ["Pacific Ocean", "Atlantic Ocean", "Indian Ocean"], correctAnswer: "Pacific Ocean"),
                Question(q: "Who invented the telephone?", a: ["Alexander Graham Bell", "Thomas Edison", "Nicola Tesla"], correctAnswer: "Alexander Graham Bell"),
                Question(q: "In what year did the World War II begin?", a: ["1939", "1940", "1941"], correctAnswer: "1939"),
                Question(q: "What is the highest mountain peak in the world?", a: ["Mount Everest", "K2", "Kangchenjunga"], correctAnswer: "Mount Everest")
    ]
    
    var questionNumber = 0
    var scoreCount = 0
    
    mutating func checkAnswer(_ userAnswer:String) -> Bool{
        if userAnswer == quiz[questionNumber].correctAnswer {
            scoreCount += 1
            return true
        } else {
            
            return false
        }
    }
    
    func getQuestionText() -> String{
        return quiz[questionNumber].text
    }
    
    func getButtonAText() -> String{
        return quiz[questionNumber].answer[0]
    }
    
    func getButtonBText() -> String{
        return quiz[questionNumber].answer[1]
    }
    
    func getButtonCText() -> String{
        return quiz[questionNumber].answer[2]
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
            
        } else {
            questionNumber = 0
            scoreCount = 0
        }
        
    }
    
    func getScore() -> Int{
        return scoreCount
    }
}
