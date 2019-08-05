//
//  LoadMoneyPopupViewController.swift
//  CoffeeApp
//
//  Created by Anthony on 31/07/19.
//  Copyright © 2019 EmeraldApps. All rights reserved.
//

import UIKit

class LoadMoneyPopupViewController: UIViewController {

    
    @IBOutlet weak var balanceLabel: UILabel!
    var amountString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        balanceLabel.text = "Balance: $\(amountString)"
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
