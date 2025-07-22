//
//  ViewController.swift
//  TwoButtons
//
//  Created by Aniket Singla on 16/07/25.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var textfeild: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func setTextButtonTapped(_ sender: Any) {
        Label.text=textfeild.text
    }
    
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        Label.text=""
        textfeild.text=""
    }
}

