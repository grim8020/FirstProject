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
    
    //text field is ready to receive input as soon as the app loads - keyboard will show up immediately
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        textField.becomeFirstResponder()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let name = textField.text ?? ""
        label.text = "Hi \(name)!"
        //below code gets rid of the keyboard once the bottom is clicked.
        textField.resignFirstResponder()
    }
    
    //when tapped outside of the text field or keyboard, the keyboard disappears
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textField.resignFirstResponder()
    }
}
