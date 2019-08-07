//
//  OrderViewController.swift
//  CoffeeApp
//
//  Created by Anthony on 1/08/19.
//  Copyright © 2019 EmeraldApps. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    
    
    var names = ["Flat White", "Cappucino", "Black Coffee"]
    var descriptions = ["A very tasty flat white", "Delicious cappucino", "Freshly brewed black coffee"]
    var amounts = ["$4", "$3", "$2.50"]
    var coffees = ["cof","cof3","cof2"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideKeyboardWhenTapped()
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "orderCell", for: indexPath) as! OrderTableViewCell
        cell.name.text = names[indexPath.row]
        cell.coffeeDescription.text = descriptions[indexPath.row]
        cell.price.text = amounts[indexPath.row]
        cell.orderButton.tag = indexPath.row
        cell.orderButton.layer.cornerRadius = cell.orderButton.bounds.height / 2
        cell.orderButton.layer.borderWidth = 3
        cell.orderButton.layer.borderColor = UIColor.brown.cgColor
        cell.cellView.layer.cornerRadius = 10
        cell.coffeeImage.image = UIImage(named: coffees[indexPath.row])
        
        return cell
    }

    @IBAction func orderButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DoughnutViewController") as! DoughnutViewController
        let vc2 = storyboard?.instantiateViewController(withIdentifier: "OrderSuccessfulViewController") as! OrderSuccessfulViewController
        
        

        
        // Create the alert controller
        let alertController = UIAlertController(title: "Doughnut", message: "Would you like to add a doughnut to your order", preferredStyle: .alert)
        
        // Create the actions
        let okAction = UIAlertAction(title: "Yes", style: UIAlertAction.Style.default) {
            (action) in
            print("yes pressed")
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        let cancelAction = UIAlertAction(title: "No", style: UIAlertAction.Style.default) { (action) in
            print("no pressed")
            self.navigationController?.pushViewController(vc2, animated: true)
        }
        
        // Add the actions
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        
        
        // Present the controller
        self.present(alertController, animated: true, completion: nil)
    }
    
    

}
