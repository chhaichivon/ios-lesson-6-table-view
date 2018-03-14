//
//  ProductDetailViewController.swift
//  TableView
//
//  Created by Chhai Chivon on 3/14/18.
//  Copyright © 2018 Chhai Chivon. All rights reserved.
//

import UIKit

class ProductDetailViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!
    var product = Product(name: "", thumbnails: "", prepTime: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        productNameLabel.text = product.name
    }
}
