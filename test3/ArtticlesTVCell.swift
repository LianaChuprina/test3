//
//  ArtticlesTVCell.swift
//  test3
//
//  Created by Лиана Чуприна on 16.10.2021.
//

import UIKit

class ArtticlesTVCell: UITableViewCell {
    @IBOutlet var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    func render(model: ArticlesModelCell) {
        label.text = model.text
    }
    
}

class ArticlesModelCell {
    var text: String
    
    init(text: String) {
        self.text = text
    }
}
