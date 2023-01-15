//
//  ViewController.swift
//  Quiz-MVC
//
//  Created by Jacob Skiba on 11/01/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!

    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    var quizBrain = QuizBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.setTitleColor(UIColor.green, for: .normal)
            //sender.backgroundColor = UIColor.green
            //sender.backgroundColor = UIColor.green
            print("Right")
        } else {
            sender.setTitleColor(UIColor.red, for: .normal)
            //sender.backgroundColor = UIColor.red
            print("Not right")
        }
       
        quizBrain.nextQuestion()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.updateUI()
        }
        
    }
    
    func updateUI() {
        buttonA.setTitle(quizBrain.getButtonAText(), for: .normal)
        buttonB.setTitle(quizBrain.getButtonBText(), for: .normal)
        buttonC.setTitle(quizBrain.getButtonCText(), for: .normal)
        questionLabel.text = quizBrain.getQuestionText()
        scoreLabel.text = "Score \(quizBrain.getScore())"
        buttonA.setTitleColor(UIColor.white, for: .normal)
        buttonB.setTitleColor(UIColor.white, for: .normal)
        buttonC.setTitleColor(UIColor.white, for: .normal)
//        buttonA.backgroundColor = UIColor.clear
//        buttonB.backgroundColor = UIColor.clear
//        buttonC.backgroundColor = UIColor.clear
        let progress = quizBrain.getProgress()
        progressBar.setProgress(progress, animated: true)
    }
    
    
}

