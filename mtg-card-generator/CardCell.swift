//
//  CardCell.swift
//  mtg-card-generator
//
//  Created by Adrian Padua on 5/16/16.
//  Copyright © 2016 Adrian Padua. All rights reserved.
//

import UIKit

class CardCell: UITableViewCell {

    @IBOutlet weak var cellImg: UIImageView!
    @IBOutlet weak var cellName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(card: Card) {
        cellName.text = card.name
    }

}
