//
//  PasswordViewController.swift
//  SignUpApp
//
//  Created by Christopher Arriola on 2/22/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import UIKit

class PasswordViewController: UIViewController {
    @IBOutlet weak var textFieldPassword: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEmailViewSegue" {
            let emailViewController = segue.destination as! EmailViewController
            // TODO Pass builder object to emailViewController
        }
    }
}

