//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by tengfong lee on 8/18/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue //Label.text actually required optional string
        adviceLabel.text = advice
        view.backgroundColor = color // in UIview controller we have a property called view, which is also the view inside the main.storyBoard
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
