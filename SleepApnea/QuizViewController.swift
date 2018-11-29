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
        ResponseQ1.font = UIFont(name: ResponseQ1.font.fontName, size: 30)
        ResponseQ1.text = "Central Sleep Apnea is more likely to occur in people older than 65"
        FQ1.setTitle("", for: .normal)
        TQ1.setTitle("", for: .normal)
        NQ1.setTitle("Next Question", for: .normal)
    }
    @IBOutlet weak var ResponseQ1: UILabel!
    @IBOutlet weak var NQ1: UIButton!
    
    //second Question
    @IBOutlet weak var TQ2: UIButton!
    @IBAction func TQ2(_ sender: Any) {
        correctAnswers += 1
        ResponseQ2.font = UIFont(name: ResponseQ2.font.fontName, size: 40)
        ResponseQ2.text = "Correct"
        FQ2.setTitle("", for: .normal)
        TQ2.setTitle("", for: .normal)
        NQ2.setTitle("Next Question", for: .normal)
    }
    @IBOutlet weak var FQ2: UIButton!
    @IBAction func FQ2(_ sender: Any) {
        ResponseQ2.font = UIFont(name: ResponseQ2.font.fontName, size: 30)
        ResponseQ2.text = "Loud Snoring IS a side effect of Sleep Apnea"
        FQ2.setTitle("", for: .normal)
        TQ2.setTitle("", for: .normal)
        NQ2.setTitle("Next Question", for: .normal)
        
    }
    @IBOutlet weak var ResponseQ2: UILabel!
    @IBOutlet weak var NQ2: UIButton!
    
    //Question 3
    @IBOutlet weak var TQ3: UIButton!
    @IBAction func TQ3(_ sender: Any) {
        ResponseQ3.font = UIFont(name: ResponseQ3.font.fontName, size: 30)
        ResponseQ3.text = "Central Sleep Apnea occurs when the brain does not tell the muscles to breathe, Obstructive Sleep Apnea is when the airway gets blocked"
        FQ3.setTitle("", for: .normal)
        TQ3.setTitle("", for: .normal)
        NQ3.setTitle("Next Question", for: .normal)
        
    }
    @IBOutlet weak var FQ3: UIButton!
    @IBAction func FQ3(_ sender: Any) {
        correctAnswers += 1
        ResponseQ3.font = UIFont(name: ResponseQ3.font.fontName, size: 40)
        ResponseQ3.text = "Correct"
        FQ3.setTitle("", for: .normal)
        TQ3.setTitle("", for: .normal)
        NQ3.setTitle("Next Question", for: .normal)
    }
    @IBOutlet weak var ResponseQ3: UILabel!
    @IBOutlet weak var NQ3: UIButton!
    
    @IBOutlet weak var ShowScore: UIButton!
    @IBAction func ShowScore(_ sender: Any) {
        Congrats.text = "Congratulations!"
        ShowScore.titleLabel?.font = UIFont(name: "System", size: 100)
        ShowScore.setTitle("You Scored \(correctAnswers) out of 3!", for: .normal)
        BackToMenu.setTitle("Back to Main Menu", for: .normal)
    }
    @IBOutlet weak var Congrats: UILabel!
    @IBOutlet weak var BackToMenu: UIButton!
    
}
