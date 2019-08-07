//
//  DoughnutViewController.swift
//  CoffeeApp
//
//  Created by Anthony on 7/08/19.
//  Copyright © 2019 EmeraldApps. All rights reserved.
//

import UIKit

class DoughnutViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var names = ["Plain Doughnut", "Chocolate Doughnut", "Strawberry Doughnut"]
    var descriptions = ["Delicious plain glazed doughnut", "Scrumptious chocolate doughnut", "Doughnut with a strawberry kick"]
    var amounts = ["$2", "$2", "$4"]
    var coffees = ["do","do2","do3"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideKeyboardWhenTapped()
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "doughnutCell", for: indexPath) as! OrderTableViewCell
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
        let vc = storyboard?.instantiateViewController(withIdentifier: "OrderSuccessfulViewController") as! OrderSuccessfulViewController
        
        //vc.giveaway = self.giveawaysLost[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
        

    }
    


}
