//
//  QuizViewController.swift
//  SleepApnea
//
//  Created by Matthew Woodruff on 11/28/18.
//  Copyright © 2018 Arcadia Technologies. All rights reserved.
//

import Foundation
import UIKit

class QuizViewController: UIViewController {
    var correctAnswers = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var FQ1: UIButton!
    @IBAction func FQ1(_ sender: Any) {
        correctAnswers += 1
        ResponseQ1.font = UIFont(name: ResponseQ1.font.fontName, size: 40)
        ResponseQ1.text = "Correct"
        FQ1.setTitle("", for: .normal)
        TQ1.setTitle("", for: .normal)
        NQ1.setTitle("Next Question", for: .normal)
    }
    @IBOutlet weak var TQ1: UIButton!
    @IBAction func TQ1(_ sender: Any) {
        ResponseQ1.font = UIFont(name: ResponseQ1.font.fontName, size: 20)
        ResponseQ1.text = "Central Sleep Apnea is more likely to occur in people older than 65"
        NQ1.setTitle("Next Question", for: .normal)
    }
    @IBOutlet weak var ResponseQ1: UILabel!
    @IBOutlet weak var NQ1: UIButton!
    
}
