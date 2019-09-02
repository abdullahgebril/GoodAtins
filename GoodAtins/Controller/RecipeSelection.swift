//
//  RecipeSelection.swift
//  GoodAtins
//
//  Created by Abdullah Gebreil on 11/14/1440 AH.
//  Copyright © 1440 AH Abdullah Gebreil. All rights reserved.
//

import UIKit

class RecipeSelection:UIViewController,UICollectionViewDelegate,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout {
  

    var categoryTitle : String!
    var recipes = [Recipe]()
    var data = DataSet()
    var recipeselected: Recipe!
    
    @IBOutlet weak var collectioview: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      collectioview.delegate = self
        collectioview.dataSource = self
        recipes = data.getRecipes(forCategoryTitle: categoryTitle)

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell  =  collectioview.dequeueReusableCell(withReuseIdentifier: "RecipeCell", for: indexPath) as? RecipeCell {
            var recipe = recipes[indexPath.item]
            cell.configureCell(repice: recipe)
            return cell
        }
        return RecipeCell()
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.bounds.width
        let cellDimension = (width / 2) - 15
        return CGSize(width: cellDimension, height: cellDimension)
        
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        recipeselected = recipes[indexPath.item]
         performSegue(withIdentifier: "ToRecipeDetails", sender:self)
     }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let recipeDtail = segue.destination as? RecipeDetails {
            recipeDtail.recipeDetail = recipeselected
        }
    }

}
