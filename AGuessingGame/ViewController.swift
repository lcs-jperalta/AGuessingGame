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
        
        // Make an object named 'synthesizer', which is an instance of the class 'AVSpeechSynthesizer'
        let synthesizer = AVSpeechSynthesizer()
        
        // Make a string that contains what we want the computer to say
        let message = "I'm thinking of a number between 1 and 100."
        
        // Make an object named 'utterance', which is an instance of the class AVSpeechUtterance
        let utterance = AVSpeechUtterance(string: message)
        
        // Speak the message
        synthesizer.speak(utterance)
        
    }
    // Will be used to check the guess
    @IBAction func checkGuess(_ sender: Any) {
        
        // Obtain the guess value from the text field
        let guessText = submittedGuess.text!
        let guessNumber = Int(guessText)!
        
        // For testing purposes, what was the guess?
        print("For testing purposes, the guess made was \(guessNumber)")
        
        // Give feedback to the user
        
        if guessNumber > targetNumber {
            print("Guess lower next time")
            
            // Make an object named 'synthesizer', which is an instance of the class 'AVSpeechSynthesizer'
            let synthesizer = AVSpeechSynthesizer()
            
            // Make a string that contains what we want the computer to say
            let message = "Guess lower next time."
            
            // Make an object named 'utterance', which is an instance of the class AVSpeechUtterance
            let utterance = AVSpeechUtterance(string: message)
            
            // Speak the message
            synthesizer.speak(utterance)
            
        } else if guessNumber < targetNumber {
            print("Guess higher next time")
            
            // Make an object named 'synthesizer', which is an instance of the class 'AVSpeechSynthesizer'
            let synthesizer = AVSpeechSynthesizer()
            
            // Make a string that contains what we want the computer to say
            let message = "Guess higher next time."
            
            // Make an object named 'utterance', which is an instance of the class AVSpeechUtterance
            let utterance = AVSpeechUtterance(string: message)
            
            // Speak the message
            synthesizer.speak(utterance)
            
        } else {
            print("You are correct!")
            
            // Make an object named 'synthesizer', which is an instance of the class 'AVSpeechSynthesizer'
            let synthesizer = AVSpeechSynthesizer()
            
            // Make a string that contains what we want the computer to say
            let message = "You are correct!"
            
            // Make an object named 'utterance', which is an instance of the class AVSpeechUtterance
            let utterance = AVSpeechUtterance(string: message)
            
            // Speak the message
            synthesizer.speak(utterance)
            
        }
    }
    
    

}


