//
//  Product.swift
//  TableView
//
//  Created by Chhai Chivon on 3/14/18.
//  Copyright © 2018 Chhai Chivon. All rights reserved.
//

import Foundation



struct Product {
    let name:String
    let thumbnails:String
    let prepTime:String
    
    init(name:String,thumbnails:String,prepTime:String) {
        self.name = name
        self.thumbnails = thumbnails
        self.prepTime = prepTime
    }
}
