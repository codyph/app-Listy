//
//  ParallaxCell.swift
//  app-Listy
//
//  Created by Bailey Aldridge on 14/1/19.
//  Copyright © 2019 Cody Philipp. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {

    // Outlets
    @IBOutlet weak var itemView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // set up our parallax code later
    }
    
    func configureCell(withImage image: UIImage, withTitle title: String) {
        itemView.image = image
        titleLabel.text = title
    }
    
    func setupParallax() {
        
    }

}
