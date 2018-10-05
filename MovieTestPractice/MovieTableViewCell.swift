import UIKit

class MovieTableViewCell: UITableViewCell {


    // outlet -- add seen button

    @IBOutlet weak var field: UIStackView!


    @IBOutlet weak var textview: UITableView!

    @IBOutlet weak var done: UIBarButtonItem!



  //   outlet -- add name label
   //  outlet -- swatchview
    
    weak var delegate: MovieTableViewCell?
    
//     IBAction func --like button  -- toggleAppreciation(_ sender: Any) {
//        delegate?.tappedLikedButton(on: self)
    
    
   
//    }
    
    
    
}
