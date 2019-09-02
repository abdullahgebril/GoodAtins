//
//  ViewController.swift
//  GoodAtins
//
//  Created by Abdullah Gebreil on 11/14/1440 AH.
//  Copyright © 1440 AH Abdullah Gebreil. All rights reserved.
//

import UIKit

class CategoryVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    
    
    
    
    
    
    var data = DataSet()
    var categorySelected : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      tableview.dataSource =  self
        tableview.delegate = self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.categories.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as? CategoryCell {
            cell.configurecell(category: data.categories[indexPath.row])
            
            return cell
        }
        return CategoryCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        categorySelected = data.categories[indexPath.row].title
        performSegue(withIdentifier: "ToRecipeSelection", sender: self)
      
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let recipeVC = segue.destination as? RecipeSelection {
            
            recipeVC.categoryTitle = categorySelected
        }
    }

}

