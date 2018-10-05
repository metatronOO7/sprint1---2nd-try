import UIKit

class MovieModel: NSObject, UITableViewDataSource, MovieTableViewCellDelegate {
    
    var movies: [Movie] = []
    
//skipping lines 8-11

    weak var tableView: UITableView?

    func tappedLikedButton(on cell: MovieTableViewCell) {
        guard let indexPath = tableView?.indexPath(for: cell)
            else { fatalError("Non-existent cell!")}
    
   // movies[indexPath.row].isLiked.toggle()
    //    cell.likeButton.alpha = movies[indexPath.row].isLiked ? 1.0 : 0.33
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        self.tableView = tableView
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    let reuseIdentifier = "cell"
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as? MovieTableViewCell else {
            fatalError("Could not instantiate guaranteed cell type")
        }
    
        //cell.delegate = self
        let movie = movies[indexPath.row]
       // cell.nameLabel.text = movie.name
        // cell.swatchView.backgroundColor = crayon.color --  dont need i think
       // let title = "   dont need like button
        
    return cell
    
    }
}
