//
//  WelcomeViewController.swift
//  DRY
//
//  Created by Christopher Arriola on 1/21/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import Foundation
import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    private var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        user = User(id: 1, firstName: "Steve", lastName: "Jobs")
        label.text = "\(user.firstName) \(Array(user.lastName)[0])"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showProfileSegue" {
            let profileViewController = segue.destination as! ProfileViewController
            profileViewController.user = user
        }
    }
}
