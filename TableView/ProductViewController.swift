//
//  ProductViewController.swift
//  TableView
//
//  Created by Chhai Chivon on 3/14/18.
//  Copyright © 2018 Chhai Chivon. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate {

    var products = [Product]()
    
    @IBOutlet weak var productTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Assign data source to product table view
        productTableView.dataSource = self
        productTableView.delegate = self
        
        initializeData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Load cell from storyboard id
        let cell = tableView.dequeueReusableCell(withIdentifier: "product_cell")
        let product = products[indexPath.row]
        cell?.textLabel?.text = product.name
        cell?.detailTextLabel?.text = product.prepTime
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("user click row ",indexPath.row)
    }
    
    //Programmer
    func initializeData() {
        self.products = [Product(name: "Egg Benedict", thumbnails: "egg_benedict.jpg", prepTime: "1 hour"),
                        Product(name: "Mushroom Risotto", thumbnails: "mushroom_risotto.jpg", prepTime: "30 min"),
                        Product(name: "Full Breakfast", thumbnails: "full_breakfast.jpg", prepTime: "25 min"),
                        Product(name: "Hamburger", thumbnails: "hamburger.jpg", prepTime: "15 min"),
                        Product(name: "Ham and Egg Sandwich", thumbnails: "ham_and_egg_sandwich.jpg", prepTime: "20 min"),
                        Product(name: "Creme Brelee", thumbnails: "creme_brelee.jpg", prepTime: "10 min"),
                        Product(name: "White Chocolate Donut", thumbnails: "white_chocolate_donut.jpg", prepTime: "1 hour"),
                        Product(name: "Starbucks Coffee", thumbnails: "starbucks_coffee.jpg", prepTime: "2 hour"),
                        Product(name: "Vegetable Curry", thumbnails: "vegetable_curry.jpg", prepTime: "50 min"),
                        Product(name: "Instant Noodle with Egg", thumbnails: "instant_noodle_with_egg.jpg", prepTime: "65 min"),
                        Product(name: "Noodle with BBQ Pork", thumbnails: "noodle_with_bbq_pork.jpg", prepTime: "40 min"),
                        Product(name: "Japanese Noodle with Pork", thumbnails: "japanese_noodle_with_pork.jpg", prepTime: "30 min"),
                        Product(name: "Green Tea", thumbnails: "green_tea.jpg", prepTime: "25 min"),
                        Product(name: "Thai Shrimp Cake", thumbnails: "thai_shrimp_cake.jpg", prepTime: "1.5 hour"),
                        Product(name: "Angry Birds Cake", thumbnails: "angry_birds_cake.jpg", prepTime: "2 hour"),
                        Product(name: "Ham and Cheese Panini", thumbnails: "ham_and_cheese_panini.jpg", prepTime: "35 min")]
        productTableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "product_detail" {
            let indexPath = self.productTableView.indexPathForSelectedRow
            let destinationViewController: ProductDetailViewController = segue.destination as! ProductDetailViewController
            destinationViewController.product = products[(indexPath?.row)!]
        }
    }
    
}
