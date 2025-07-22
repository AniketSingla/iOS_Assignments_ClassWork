//
//  ViewController.swift
//  UIKitClassRoom
//
//  Created by Aniket Singla on 15/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var universityLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonTapped(_ sender: Any) {
        print("Button is Tapped")
        universityLabel.text = "iOS Program"
    }
    
    @IBAction func volumeChanged(_ sender: UISlider) {
        print(sender.value)
    }
    @IBAction func nameEdited(_ sender: UITextField){
        //print(sender.text ?? "")
        // or
//        if let text = sender.text {
//            print(text)
//        }
    }
    @IBAction func KeyboardReturnKeyPressed(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    @IBAction func WifiToggle(_ sender: UISwitch) {
        if sender.isOn {
            print("Wifi is ON")
        } else {
            print("Wifi is OFF")
        }
    }
}

