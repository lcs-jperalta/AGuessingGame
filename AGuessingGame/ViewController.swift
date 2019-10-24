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


}

