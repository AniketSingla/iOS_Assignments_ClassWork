//
//  SecondViewController.swift
//  dataPassing
//
//  Created by Aniket Singla on 11/08/25.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var secondLabel: UILabel!
    
    @IBOutlet weak var secondSlider: UISlider!
    
    @IBOutlet weak var secondTextField: UITextField!
    
    var labelData: String?
    var sliderData: Float?
    var textFieldData: String?
    var delegate: dataPassing?
    init?(coder: NSCoder, labelData: String?, sliderData: Float?,textFieldData: String?, firstVC: FirstViewContoller){
        self.labelData = labelData
        self.sliderData = sliderData
        self.textFieldData = textFieldData
        self.delegate = firstVC
        super.init(coder: coder)
    }
    required init?(coder:NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if let labelData, let sliderData, let textFieldData {
            updateUI(labelData: labelData, sliderData: sliderData, textFieldData: textFieldData)
        }

        // Do any additional setup after loading the view.
    }
    
    func updateUI(labelData:String,sliderData:Float,textFieldData: String){
        secondLabel.text = textFieldData
        secondSlider.value = sliderData
        secondTextField.text = labelData
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
