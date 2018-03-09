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
    
    var randomNumber = Int(arc4random_uniform(100))
    var userGuess: Int!
    
    var rulesText = """
 Guess a number between 1 and 100. You have 5 tries to guess the corrct number. You will be told if the number is lower or higher.
"""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rulesLabel.text = rulesText
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func guessingButton(_ sender: Any) {
        userGuess = Int(userInput.text!)
        print(userGuess)
        
    }
    
    

}
