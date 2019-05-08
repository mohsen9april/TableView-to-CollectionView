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
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? CategoryCell
            cell?.categoryImage.image = UIImage(named: DataService.intance.getCaregories()[indexPath.row].imageName)
            cell?.categoryTitle.text = DataService.intance.getCaregories()[indexPath.row].title
            return cell!
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
        
    }
}


