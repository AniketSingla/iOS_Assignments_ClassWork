class FirstViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    
    var event = EventDraft(
        title: "Sample Event",
        date: "12 Aug 2025",
        location: "New Delhi",
        attendeeCount: "50"
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabels()
    }
    
    func updateLabels() {
        firstLabel.text = event.title
        secondLabel.text = event.date
        thirdLabel.text = event.location
        fourthLabel.text = event.attendeeCount
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let editorVC = segue.destination as? SecondViewController {
            editorVC.event = event
            editorVC.delegate = self
        }
    }
}

extension FirstViewController: EventEditorDelegate {
    func didSaveEvent(_ event: EventDraft) {
        self.event = event
        updateLabels()
    }
    
    func didDeleteEvent() {
        self.event = EventDraft(title: "", date: "", location: "", attendeeCount: "")
        updateLabels()
    }
}
