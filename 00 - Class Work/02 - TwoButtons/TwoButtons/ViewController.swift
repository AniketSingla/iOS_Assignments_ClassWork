//
//  ViewController.swift
//  TwoButtons
//
//  Created by Sajal Garg on 16/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var EnterTextField: UITextField!
    
    @IBOutlet weak var ResultTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func SetTextField(_ sender: UIButton) {
        ResultTextField.text = EnterTextField.text
    }
    
    @IBAction func ClearTextButton(_ sender: UIButton) {
        EnterTextField.text = ""
        ResultTextField.text = ""
    }
    
}

