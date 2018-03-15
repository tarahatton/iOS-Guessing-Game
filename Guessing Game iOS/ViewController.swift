//
//  ViewController.swift
//  Guessing Game iOS
//
//  Created by Shontara Hatton on 3/8/18.
//  Copyright © 2018 Shontara Hatton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userInput: UITextField!
    
    @IBOutlet weak var rulesLabel: UILabel!
    
    @IBOutlet weak var userFeedbackLabel: UILabel!
   
    @IBOutlet weak var yesButton: UIButton!
    
    @IBOutlet weak var noButton: UIButton!
    

    
    var randomNumber = Int(arc4random_uniform(100))
    var userGuess: Int!
    var numberOfGuess = 5
    var tries = 1
    var rulesText = """
 Guess a number between 1 and 100. You have 5 tries to guess the corrct number. You will be told if the number is lower or higher.
"""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rulesLabel.text = rulesText
        yesButton.isHidden = true
        noButton.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func yesButton(_ sender: Any) {
        yesButton.isHidden = true
        noButton.isHidden = true
        randomNumber = Int(arc4random_uniform(100))
        numberOfGuess = 5
        userFeedbackLabel.text = ""

    }
    
    @IBAction func noButton(_ sender: Any) { exit(0)
    }
    @IBAction func guessingButton(_ sender: Any) {
        if numberOfGuess != 1 {
        numberOfGuess -= 1
        let guess = Int(userInput.text!)!
        if guess > randomNumber {
            userFeedbackLabel.text = "Your guess was too high, guess again! You have \(numberOfGuess) remaining!"
        } else if guess < randomNumber {
            userFeedbackLabel.text = "Your guess was too low, guess again! You have \(numberOfGuess) remaining"
        } else {
            userFeedbackLabel.text = "You got it right! WOOHOO!"
        }
    } else {
        userFeedbackLabel.text = "You ran out of tries, do you want to play again?"
            yesButton.isHidden = false
            noButton.isHidden = false
        }
        
    }

}
    
    

