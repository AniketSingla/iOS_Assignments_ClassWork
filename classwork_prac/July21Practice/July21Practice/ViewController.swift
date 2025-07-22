//
//  ViewController.swift
//  July21Practice
//
//  Created by Aniket Singla on 21/07/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabBarItem.badgeValue = "3"
        
    }
    
    override func viewWillDisappear(_ animated:Bool){
        super.viewWillDisappear(animated)
        tabBarItem.badgeValue = nil
    }
}

