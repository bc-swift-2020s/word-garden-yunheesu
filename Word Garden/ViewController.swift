//
//  ViewController.swift
//  Word Garden
//
//  Created by Heesu Yun on 1/31/20.
//  Copyright © 2020 Heesu Yun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var guessedLetterField: UITextField!
    @IBOutlet weak var guessLetterButton: UIButton!
    @IBOutlet weak var guessCountLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var flowerImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guessLetterButton.isEnabled = false
        playAgainButton.isHidden = true
    }
    
    func updateUIAterGuess(){
         guessedLetterField.resignFirstResponder()
         guessedLetterField.text = ""
        
    }
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        updateUIAterGuess()

    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func guessedLetterFieldChanged(_ sender: UITextField) {
        if let letterGuessed = guessedLetterField.text?.last {
            guessedLetterField.text = "\(letterGuessed)"
            guessLetterButton.isEnabled = true
        }else{
            //disable the button is I don't have a single character in the guessLetterrField
            guessLetterButton.isEnabled = false
            
        }
        
    }
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        updateUIAterGuess()

    }
    
    
}

