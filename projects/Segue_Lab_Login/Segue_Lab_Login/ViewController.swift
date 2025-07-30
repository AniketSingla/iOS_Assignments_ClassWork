//
//  ViewController.swift
//  Segue_Lab_Login
//
//  Created by Aniket Singla on 29/07/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        guard let sender = sender as? UIButton else { return }
        
        if sender == forgotPasswordButton {
            segue.destination.title = "Forgot Password"
        } else if sender == forgotUsernameButton {
            segue.destination.title = "Forgot Username"
        } else {
            segue.destination.title = "Welcome \(usernameTextField.text ?? "User")"
        }
    }
    @IBAction func loginButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "LoginSegue", sender: loginButton)
    }
    
    @IBAction func forgotUsernameButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "LoginSegue", sender: forgotUsernameButton)
    }
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "LoginSegue", sender: forgotPasswordButton)
    }
    
}

