//
//  Category .swift
//  TableView to CollectionView
//
//  Created by Mohsen Abdollahi on 5/8/19.
//  Copyright © 2019 Mohsen Abdl. All rights reserved.
//

import Foundation

struct Category {
    
    private (set) public var title: String
    private (set) public var imageName: String
    
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
}
