import UIKit
class DetailViewController: UIViewController {
    var indexPath: IndexPath? = nil
    
  
    @IBOutlet weak var field: UITextField!
    
    @IBOutlet weak var textview: UITextView!
    
    
    @IBOutlet weak var done: UISwitch!
    
    
    @objc
    func addEntry() {
        if let text = field.text, !text.isEmpty { //see if text is there
            let entry = Entry(title: text, note: textview.text, done: done.isOn) // if its there it adds it
            Model.shared.items.append(entry) // this saves it
        }
        navigationController?.popViewController(animated: true) //if the save it it doesnt let them safe again unless modified
    }
    
    @objc
    func saveEntry() {
        
        guard let indexPath = indexPath else { //make sure text is there and not empty
            fatalError("Failed to unwrap guaranteed indexPath")
        }
        
        if let text = field.text, !text.isEmpty {
            let entry = Entry(title: text, note: textview.text, done: done.isOn) // creates new entry replaces old
            Model.shared.items[indexPath.row] = entry
        }
        
        navigationController?.popViewController(animated: true) //when you save you want to be done
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let indexPath = indexPath { // optional unwrapping
            assert(indexPath.row < Model.shared.items.count, "Out of range indexPath") //crashes if condition is false

            let entry = Model.shared.items[indexPath.row] //
            field.text = entry.title // puts title in text
            textview.text = entry.note // puts note in text
            done.isOn = entry.done
        }

        //makes add or save button work
        let barButton = UIBarButtonItem(title: nil, style: .plain, target: self, action: nil)
        navigationItem.rightBarButtonItem = barButton
        switch indexPath {
        case nil: // new record
            barButton.title = "Add"
            barButton.action = #selector(addEntry) // wraps up add entry  function use as var
        default: // modify record
            barButton.title = "Save"
            barButton.action = #selector(saveEntry)
}




        //makes add or save button work
//        let switchButton = switchToggle(target: self, action: nil)
//        switchToggle

 //           else {
  //              return = nil                      prob need this too
      }

}

