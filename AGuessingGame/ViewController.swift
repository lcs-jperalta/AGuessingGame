//
//  ViewController.swift
//  AGuessingGame
//
//  Created by Peralta, Joven on 2019-10-23.
//  Copyright © 2019 Peralta, Joven. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    // MARK: Properties
    let targetNumber = Int.random(in: 1...100)
    @IBOutlet weak var submittedGuess: UITextField!
    
    // MARK: Initializers 
    
    
    // MARK: Methods (functions) - behaviours
    
    
    // Runs as soon as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Speak and print the instructions when the view is loaded
        speak(message: "I'm thinking of a number between 1 and 100.")
        
    }
    // Will be used to check the guess
    @IBAction func checkGuess(_ sender: Any) {
        
        // Obtain the guess value from the text field
        guard let guessText = submittedGuess.text, guessText != "" else {
            speak(message: "Please submit a value and try again.")
            return
        }
        guard let guessNumber = Int(guessText) else {
            speak(message: "Please submit a number and try again.")
            return
        }
        
        // For testing purposes, what was the guess?
        print("For testing purposes, the guess made was \(guessNumber)")
        
        // Give feedback to the user
        
        if guessNumber > targetNumber {
            // Speak and print the message if submitted guess is lower than target number
            speak(message: "Guess lower next time")
            
        } else if guessNumber < targetNumber {
            // Speak and print the message if submitted guess is higher than target number
            speak(message: "Guess higher next time")
            
        } else {
            // Speak and print the message if submitted guess is right
            speak(message: "You are correct")
            
        }
    }
    
    // A function that will speak whatever message is provided
    func speak(message: String) {
        // Make an object named 'synthesizer', which is an instance of the class 'AVSpeechSynthesizer'
        let synthesizer = AVSpeechSynthesizer()
        
        // Make an object named 'utterance', which is an instance of the class AVSpeechUtterance
        let utterance = AVSpeechUtterance(string: message)
        
        // Speak the message
        synthesizer.speak(utterance)
        
        // Print the message
        print(message)
    }
    
    

}


