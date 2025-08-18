//
//  ViewController.swift
//  dataPassing
//
//  Created by Aniket Singla on 11/08/25.
//

import UIKit

protocol dataPassing{
    func dataPassingToFirstViewController(textFieldData: String, sliderData: Float, labelData: String)
}

class FirstViewController: UIViewController {
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var firstSlider: UISlider!
    
    @IBOutlet weak var firstTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func dataPassingToFirstViewController(textFieldData: String, sliderData: Float, labelData: String) {
        firstTextField.text = labelData
        firstSlider.value = sliderData
        firstLabel.text = textFieldData
        
    }
    
    
    @IBSegueAction func passDataToSecondVC(_ coder: NSCoder) -> SecondViewController? {
        let labelData = firstLabel.text
        let sliderData = firstSlider.value
        let textFieldData = firstTextField.text
        
        return SecondViewController(coder: coder, labelData: labelData, sliderData: sliderData, textFieldData: textFieldData, firstVC:FirstViewController)
    }
    
    @IBAction func unwindToFirstViewController(segue : UIStoryboardSegue){
        guard let secondViewController = segue.source as? SecondViewController else{
            return
        }
        firstLabel.text = secondViewController.secondTextField.text
        firstTextField.text = secondViewController.secondLabel.text
        firstSlider.value = secondViewController.secondSlider.value
    }

}

