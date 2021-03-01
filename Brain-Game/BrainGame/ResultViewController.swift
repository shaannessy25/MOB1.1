//
//  ResultViewController.swift
//  BrainGame
//
//  Created by Shaan Hurley on 2/26/21
//  Copyright © 2021 Makeschool. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var expectScore: Int = 0
    
    @IBOutlet weak var resultScore: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            resultScore.text = "Your Score: \(expectScore)"
       
    }
    
    
}
