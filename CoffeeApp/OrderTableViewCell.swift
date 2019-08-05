//
//  OrderTableViewCell.swift
//  CoffeeApp
//
//  Created by Anthony on 1/08/19.
//  Copyright © 2019 EmeraldApps. All rights reserved.
//

import UIKit

class OrderTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var coffeeDescription: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var quantityTextField: UITextField!

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var orderButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
