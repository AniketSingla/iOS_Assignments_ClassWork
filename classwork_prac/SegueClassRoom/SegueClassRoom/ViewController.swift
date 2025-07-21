//
//  ViewController.swift
//  SegueClassRoom
//
//  Created by Aniket Singla on 18/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toggleSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func unwindToRed(unwind: UIStoryboardSegue) {
        
    }
    @IBAction func goToYellowButtonTapped(_ sender: Any) {
        if toggleSwitch.isOn {
            performSegue(withIdentifier: "yellow",sender: nil)
        }
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
//        segue.destination.navigationItem.title=textfield.text;
//    }
    
    
}

