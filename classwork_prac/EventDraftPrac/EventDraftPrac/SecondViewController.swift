//
//  SecondViewController.swift
//  EventDraftPrac
//
//  Created by Aniket Singla on 12/08/25.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var firstTextField: UITextField!
    
    @IBOutlet weak var secondTextField: UITextField!
    
    @IBOutlet weak var thirdTextField: UITextField!
    
    @IBOutlet weak var fourthTextField: UITextField!
    
    weak var delegate: EventEditorDelegate?
    var event: EventDraft?  // incoming data from first screen
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let event = event {
            firstTextField.text = event.title
            secondTextField.text = event.date
            thirdTextField.text = event.location
            fourthTextField.text = event.attendeeCount
        }
    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        let updatedEvent = EventDraft(
            title: firstTextField.text ?? "",
            date: secondTextField.text ?? "",
            location: thirdTextField.text ?? "",
            attendeeCount: fourthTextField.text ?? ""
        )
        delegate?.didSaveEvent(updatedEvent)
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func deleteTapped(_ sender: UIBarButtonItem) {
        delegate?.didDeleteEvent()
        navigationController?.popViewController(animated: true)
    }
}
