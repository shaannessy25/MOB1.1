//
//  ViewController.swift
//  BrainGame
//
//  Created by Shaan Hurley on 2/26/21.
//  Copyright © 2021 Makeschool. All rights reserved.
//

import UIKit

enum Color: CaseIterable {
    case red, blue, yellow
    
    var color: UIColor {
        switch self {
        case .red:
            return .
            red
        case .blue:
            return .blue
        case .yellow:
            return .yellow
        }
    }
    var textColor: String {
        switch self {
        case .red:
            return "red"
        case .blue:
            return "blue"
        case .yellow:
            return "yellow"
        }
    }
    
    init() {
        self = Color.allCases[Int(arc4random_uniform(UInt32(Color.allCases.count)))]
    }
    
    mutating func getRandomColor() {
        self = Color.allCases[Int(arc4random_uniform(UInt32(Color.allCases.count)))]
    }
    
}

class ViewController: UIViewController {
    var time = 60
    var timer1 = Timer()
    var score1 = 0

    @IBOutlet weak var timer: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var yesOutlet: UIButton!
    @IBOutlet weak var noOutlet: UIButton!
    @IBOutlet weak var color1Label: UILabel!
    @IBOutlet weak var color2Label: UILabel!
    
    var topTextColor = Color()
    var bottomColor = Color()
    
    
    @objc func action() {
        if time != 0 {
            time -= 1
            timer.text = "Timer: \(String(time))"
        } else {
            time = 60
            timer1.invalidate()
            performSegue(withIdentifier: "toResults", sender: score1)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier == "toResults" {
            let controller = segue.destination  as! ResultViewController
            guard let score = sender as? Int else {
                return
            }
            controller.expectScore = score
            score1 = 0

        }
    }
    
    
    @IBAction func noButtonTapped(_ sender: Any) {
        checkAnswer(isYes: false)
    }
    
    
    @IBAction func yesButtonTapped(_ sender: Any) {
        checkAnswer(isYes: true)
    }
    
    
    func checkAnswer(isYes: Bool) {
        var colorsMatch = true
        
        if topTextColor == bottomColor {
            colorsMatch = true
        } else {
            colorsMatch = false
        }
        
        if isYes && colorsMatch {
            score1+=1
        } else if isYes && !colorsMatch {
            score1-=1
        } else if !isYes && !colorsMatch {
            score1+=1
        } else if !isYes && colorsMatch {
            score1-=1
        }
        
        score.text = "Score: \(score1)"

        topTextColor.getRandomColor() //update color
        bottomColor.getRandomColor() //get a new color
        
        color1Label.text = topTextColor.textColor
        color2Label.text = Color().textColor //get a random color
        
        color2Label.textColor = bottomColor.color
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        color1Label.text = topTextColor.textColor
        color2Label.text = Color().textColor //create a random color
        
        color2Label.textColor = bottomColor.color
        
        timer1 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func goBackToVC2(segue:UIStoryboardSegue){
        timer1 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
        
        score1 = 0
        time = 60
        
        score.text = "Score: \(score1)"
        timer.text = "Timer: \(time)"
    }
}

