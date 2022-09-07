//
//  ViewController.swift
//  Constrate
//
//  Created by Admin on 05.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden = true
        greetingButton.layer.cornerRadius = 10
    }

    @IBAction func greetingButtonPressed() {
        greetingLabel.isHidden.toggle()
        
        greetingButton.setTitle(
            greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting",
            for: .normal
        )
        
//        if greetingLabel.isHidden {
//            greetingButton.setTitle("Show greeting", for: .normal)
//        } else {
//            greetingButton.setTitle("Hide Greeting", for: .normal)
//        }
    }
    
}

