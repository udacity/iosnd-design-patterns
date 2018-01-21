//
//  ProfileViewController.swift
//  DRY
//
//  Created by Christopher Arriola on 1/21/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "\(user.firstName) \(Array(user.lastName)[0])"
    }
}
