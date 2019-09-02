//
//  RecipeDetails.swift
//  GoodAtins
//
//  Created by Abdullah Gebreil on 11/14/1440 AH.
//  Copyright © 1440 AH Abdullah Gebreil. All rights reserved.
//

import UIKit

class RecipeDetails: UIViewController {

    @IBOutlet weak var recipeDescription: UILabel!
    @IBOutlet weak var recipeTile: UILabel!
    @IBOutlet weak var recipeImg: UIImageView!
    
    
    var recipeDetail: Recipe!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
recipeImg.image = UIImage(named: recipeDetail.imageName)
        
        recipeTile.text = recipeDetail.title
        recipeDescription.text = recipeDetail.instructions
    }
    

  

}
