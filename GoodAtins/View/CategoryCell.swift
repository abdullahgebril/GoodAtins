//
//  CategoryCell.swift
//  GoodAtins
//
//  Created by Abdullah Gebreil on 11/14/1440 AH.
//  Copyright © 1440 AH Abdullah Gebreil. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryTitle: UILabel!
    @IBOutlet weak var categoryimg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       categoryimg.layer.cornerRadius = 10
    }

    func configurecell(category : Category) {
        categoryTitle.text = category.title
        categoryimg.image = UIImage(named: category.imageName)
    }
}
