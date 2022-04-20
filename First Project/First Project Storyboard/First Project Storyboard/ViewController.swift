//
//  ViewController.swift
//  First Project Storyboard
//
//  Created by Shane Grim on 4/20/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = "Hello Everyone!"
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let name = textField.text ?? ""
        label.text = "Hi \(name)!"
    }
    
}

