//: Playground - noun: a place where people can play

import UIKit

/// 1. Consumer
struct User {
    let name: String
    let emailAddress: String
}

/// 2. Producer
class CustomerRepresentative {
    func sendPromotionEmail() {
        let email = Email(body: "Get 50% off your next purchase!", subject: "Promo")
        let demographics = EmailDemographics(isActiveUser: true, madePurchaseRecently: true)
        
        let mediator = EmailMediator()
        mediator.send(email: email, toUsersWith: demographics)
    }
}

struct Email {
    let body: String
    let subject: String
}

struct EmailDemographics {
    let isActiveUser: Bool
    let madePurchaseRecently: Bool
}

/// 3. Mediator
class EmailMediator {
    
    private var users: [User] = [
        User(name: "John", emailAddress: "john@emailprovider.com"),
        User(name: "Mary", emailAddress: "mary@emailprovider.com"),
        User(name: "Bob", emailAddress: "bob@emailprovider.com")
    ]
    
    func send(email: Email, toUsersWith demographic: EmailDemographics) {
        // TODO
    }
}
