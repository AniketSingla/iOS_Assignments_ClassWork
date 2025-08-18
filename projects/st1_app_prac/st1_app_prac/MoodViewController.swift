//
//  MoodViewController.swift
//  st1_app_prac
//
//  Created by Aniket Singla on 07/08/25.
//

import UIKit

class MoodViewController: UIViewController {
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    
    @IBOutlet weak var thirdLabel: UILabel!
    
    @IBOutlet weak var fourthLabel: UILabel!
    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    
    @IBOutlet weak var fourthButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

        // Do any additional setup after loading the view.
    }
    
    func updateUI(){
        
        firstButton.setTitle(meals[0].mood.emoji,for: .normal)
        secondButton.setTitle(meals[4].mood.emoji,for: .normal)
        thirdButton.setTitle(meals[8].mood.emoji,for: .normal)
        fourthButton.setTitle(meals[12].mood.emoji,for: .normal)
        
        firstLabel.text = meals[0].mood.name
        secondLabel.text = meals[4].mood.name
        thirdLabel.text = meals[8].mood.name
        fourthLabel.text = meals[12].mood.name
        
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "MoodSegue", sender: self)
    }
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
