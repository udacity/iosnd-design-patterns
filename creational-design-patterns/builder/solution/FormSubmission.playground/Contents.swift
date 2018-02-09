//: Playground - noun: a place where people can play

import UIKit

struct SignUpSubmission {
    let username: String
    let email: String
    let phoneNumber: String
    // ...
    
    class Builder {
        var username: String?
        var email: String?
        var phoneNumber: String?
        
        func build() -> SignUpSubmission? {
            guard let username = username, let email = email, let phoneNumber = phoneNumber else {
                return nil
            }
            return SignUpSubmission(username: username, email: email, phoneNumber: phoneNumber)
        }
    }
}
