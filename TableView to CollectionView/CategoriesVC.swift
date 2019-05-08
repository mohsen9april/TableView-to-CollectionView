//
//  ViewController.swift
//  TableView to CollectionView
//
//  Created by Mohsen Abdollahi on 5/8/19.
//  Copyright © 2019 Mohsen Abdl. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var categoryTable: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryTable.delegate = self
        categoryTable.dataSource = self
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.intance.getCaregories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? CategoryCell{
            let category = DataService.intance.getCaregories()[indexPath.row]
            cell.categoryImage.image = UIImage(named: category.imageName)
            cell.categoryTitle.text = category.title
            return cell
        } else {
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
        
    }
}


