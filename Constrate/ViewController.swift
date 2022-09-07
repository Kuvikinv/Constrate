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
//        greetingButton.layer.cornerRadius = 10
        greetingButton.configuration = setupButton(with: "Show Greeting")
    }

    @IBAction func greetingButtonPressed() {
        greetingLabel.isHidden.toggle()
        
        greetingButton.configuration = setupButton(with: greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting")
        
//        greetingButton.setTitle(
//            greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting",
//            for: .normal
//        )
        
//        if greetingLabel.isHidden {
//            greetingButton.setTitle("Show greeting", for: .normal)
//        } else {
//            greetingButton.setTitle("Hide Greeting", for: .normal)
//        }
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfuguration = UIButton.Configuration.filled()
        buttonConfuguration.baseBackgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        buttonConfuguration.title = title
        buttonConfuguration.buttonSize = .large
        buttonConfuguration.cornerStyle = .large
        buttonConfuguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return buttonConfuguration
    }
}

