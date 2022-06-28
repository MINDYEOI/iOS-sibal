//
//  ViewController.swift
//  sibal
//
//  Created by mindyeoi on 2022/06/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        titleLabel.numberOfLines = 0
        titleLabel.text = "Before the button touched"
    
        
    }

    @IBAction func changeButtonClicked(_ sender: Any) {
        
        titleLabel.text = "Button Touched"
        titleLabel.textColor = .red
    }
    
}

