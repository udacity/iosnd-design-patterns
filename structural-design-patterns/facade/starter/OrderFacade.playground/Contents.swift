//: Playground - noun: a place where people can play

import UIKit

// An order for a ticket to a concert
struct Order {
    let userId: String
    let payment: PaymentInformation
    let concert: Concert
}

// A user's payment information
struct PaymentInformation {
    let creditCardNumber: String
    // ...other fields
}

// A concert
struct Concert {
    let id: String
    // ...other fields
}

// A class for interacting with different concerts
class ConcertManager {
}

// A class for processing payments
class PaymentProcessor {
}

