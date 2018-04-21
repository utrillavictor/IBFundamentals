//
//  HeaderCell.swift
//  StoryboardSectionHeaders
//

import UIKit

class HeaderCell: UITableViewCell {

    @IBOutlet weak var imageHeader: UIImageView!
    @IBOutlet weak var labelHeader: UILabel!

    func setupCell(image: UIImage, title: String) {
        imageHeader.image = image
        labelHeader.text = title
    }

}
