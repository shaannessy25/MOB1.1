//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Shaan  on 2/15/21.
//

import UIKit

class ViewController: UIViewController {
    let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButtton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func generateAnswer() {
        let randomIndex = Int.random(in: 0..<answers.count)

        answerLabel.text = answers[randomIndex]
    }

    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateAnswer()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }

        generateAnswer()
    }
    
}

