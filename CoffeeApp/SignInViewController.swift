//
//  SignInViewController.swift
//  CoffeeApp
//
//  Created by Anthony on 31/07/19.
//  Copyright © 2019 EmeraldApps. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var mainContainer: UIView!
    
    var signInIsSelected = true
    
    // test user data
    let testEmail = "test@hotmail.com"
    let testPassword = "test"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTapped()
        signInButton.layer.cornerRadius = signInButton.bounds.height / 2
        mainContainer.layer.cornerRadius = 10
        
    }
    

    @IBAction func segmentChangedAction(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            signInIsSelected = true
            signInButton.setTitle("Sign In", for: .normal)
            break
        case 1:
            signInIsSelected = false
            signInButton.setTitle("Register", for: .normal)
            break
        default:
            print("Unknown index")
        }
        
        
    }
    
    
    @IBAction func signInButton(_ sender: Any) {
        if signInIsSelected{
            
            // if sign in is selected the correct details must be added to navigate to the home page
            if emailTextField.text == testEmail && passwordTextField.text == testPassword {
                performSegue(withIdentifier: "toHome", sender: self)
            }
        }
        
        else {
            // if register is selected navigate to home
            performSegue(withIdentifier: "toHome", sender: self)
        }
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
extension UIViewController {
    func hideKeyboardWhenTapped() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
