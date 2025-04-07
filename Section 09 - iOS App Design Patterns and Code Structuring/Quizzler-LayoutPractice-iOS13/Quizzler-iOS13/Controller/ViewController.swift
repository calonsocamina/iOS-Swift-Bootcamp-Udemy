//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    
    //Call to QuizBrain file on Model folder
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        //Call to QuizBrain file on Model folder
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        //Call to QuizBrain file on Model folder
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target:self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        //Updates label to each question (taken from QuizBrain)
        questionLabel.text = quizBrain.getQuestionText()
        //Updates progress bar (taken from QuizBrain)
        progressBar.progress = quizBrain.getProgress()
        //Updates score (taken from QuizBrain)
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        let answers = quizBrain.getAnswers()
        
        firstButton.setTitle(answers[0], for: .normal)
        secondButton.setTitle(answers[1], for: .normal)
        thirdButton.setTitle(answers[2], for: .normal)
        
        //Updates button background color to default
        firstButton.backgroundColor = .clear
        secondButton.backgroundColor = .clear
        thirdButton.backgroundColor = .clear
    }
}

