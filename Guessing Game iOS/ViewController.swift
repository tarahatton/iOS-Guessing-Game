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
    
    var randomNumber = Int(arc4random_uniform(100))
    var userGuess: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func guessingButton(_ sender: Any) {
        userGuess = Int(userInput.text!)
        print(userGuess)
        
    }
    
    

}
