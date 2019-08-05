//
//  LoadMoneyViewController.swift
//  CoffeeApp
//
//  Created by Anthony on 31/07/19.
//  Copyright © 2019 EmeraldApps. All rights reserved.
//

import UIKit

class LoadMoneyViewController: UIViewController {

    @IBOutlet weak var amountHelpText: UILabel!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var cardNumberTextField: UITextField!
    @IBOutlet weak var nameOnCardTextField: UITextField!
    @IBOutlet weak var loadMoneyButton: UIButton!
    @IBOutlet weak var expMonthTextField: UITextField!
    @IBOutlet weak var expYearTextField: UITextField!
    @IBOutlet weak var securityCodeTextField: UITextField!
    override func viewDidLoad() {
        amountHelpText.isHidden = true
        super.viewDidLoad()
        hideKeyboardWhenTapped()
        clearTextFields()
        // Do any additional setup after loading the view.
       
        //self.navigationController?.navigationBar.barTintColor = UIColor(red: 109/255, green: 253/255, blue: 156/255, alpha: 1.0)
        //self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        //self.navigationController?.navigationBar.shadowImage = UIImage()
        //self.navigationController?.navigationBar.layoutIfNeeded()
    
    }
    
    @IBAction func loadMoney(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "LoadMoneyPopupViewController") as! LoadMoneyPopupViewController
        
        if amountTextField.text != "" {
        vc.amountString = amountTextField.text!
            self.navigationController?.pushViewController(vc, animated: true)
        } else {
            amountHelpText.isHidden = false
            amountHelpText.text = "Please enter an amount"
        }
        
    }
    
    func clearTextFields(){
        amountTextField.text = ""
        cardNumberTextField.text = ""
        nameOnCardTextField.text = ""
        expYearTextField.text = ""
        expMonthTextField.text = ""
        securityCodeTextField.text = ""
      
    }
}
