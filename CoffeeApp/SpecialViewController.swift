//
//  SpecialViewController.swift
//  CoffeeApp
//
//  Created by Anthony on 5/08/19.
//  Copyright © 2019 EmeraldApps. All rights reserved.
//

import UIKit

class SpecialViewController: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var orderButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        orderButton.layer.cornerRadius = orderButton.bounds.height / 2
        orderButton.layer.borderWidth = 4
        orderButton.layer.borderColor = UIColor.brown.cgColor
        myImageView.layer.cornerRadius = 10
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
