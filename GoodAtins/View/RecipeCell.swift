//
//  RecipeCell.swift
//  GoodAtins
//
//  Created by Abdullah Gebreil on 11/14/1440 AH.
//  Copyright © 1440 AH Abdullah Gebreil. All rights reserved.
//

import UIKit

class RecipeCell: UICollectionViewCell {
    
    @IBOutlet weak var recipeImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        recipeImg.layer.cornerRadius = 15
    }
    func configureCell(repice: Recipe) {
        
        recipeImg.image = UIImage(named: repice.imageName)
    }
}
