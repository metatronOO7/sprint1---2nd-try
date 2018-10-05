import UIKit

struct Movie {
    let name: String
    let color: UIColor
    var isLiked: Bool
    
    init(name: String, color: UIColor, isLiked: Bool = false) {
        self.name = name
        self.color = color
        self.isLiked = isLiked
    }
}
