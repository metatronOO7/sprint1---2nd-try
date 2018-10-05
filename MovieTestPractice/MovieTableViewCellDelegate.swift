import UIKit

protocol MovieTableViewCellDelegate: class {
    func tappedLikedButton(on cell: MovieTableViewCell)
}
