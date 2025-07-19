//TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
//  ViewController.swift
//  BMI-Calculator
//
//  Created by Sajal Garg on 14/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var WeightTextFile: UITextField!
    
    @IBOutlet weak var HeightTextField: UITextField!
    
    @IBOutlet weak var BMIResultField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func CalculateButtonPressed(_ sender: Any) {
        let weightString = WeightTextFile.text ?? ""
        let weight = Double(weightString) ?? 0
        
        let heightString = HeightTextField.text ?? ""
        let height = Double(heightString) ?? 0
        
        let bmiResult = weight / (height * height)
        BMIResultField.text = "BMI is \(bmiResult)"
    }
    
}

