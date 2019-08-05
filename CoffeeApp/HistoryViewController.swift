//
//  HistoryViewController.swift
//  CoffeeApp
//
//  Created by Anthony on 1/08/19.
//  Copyright © 2019 EmeraldApps. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    var coffees = ["flat whites", "cappucinos", "black coffee","flat whites", "cappucinos", "black coffee","flat whites", "cappucinos", "black coffee"]
    var quantities = ["2", "3", "1","2", "3", "1","2", "3", "1"]
    var amounts = ["$8", "$9", "$2.50","$8", "$9", "$2.50","$8", "$9", "$2.50"]
    var dates = ["30/06/2019", "31/06/2019","02/07/2019","30/06/2019", "31/06/2019","02/07/2019","30/06/2019", "31/06/2019","02/07/2019"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coffees.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "historyCell", for: indexPath) as! HistoryTableViewCell
        
        cell.name.text = "\(quantities[indexPath.row]) \(coffees[indexPath.row])"
        cell.date.text = dates[indexPath.row]
        cell.cost.text = amounts[indexPath.row]
        
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
