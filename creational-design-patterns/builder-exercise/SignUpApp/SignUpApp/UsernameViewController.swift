//
//  ViewController.swift
//  SignUpApp
//
//  Created by Christopher Arriola on 2/9/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import UIKit

class UsernameViewController: UIViewController {

    @IBOutlet weak var textFieldUsername: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToPasswordViewSegue" {
            let passwordViewController = segue.destination as! PasswordViewController
            // TODO Create builder object and pass it to passwordViewController
        }
    }
}

