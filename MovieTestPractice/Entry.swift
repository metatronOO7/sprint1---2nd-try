struct Entry: Codable {
    let title: String
    let note: String
    let done: Bool
}
import UIKit

protocol PaintingTableViewCellDelegate: class {
    func tappedLikedButton(on cell: MovieTableViewCell)
}
