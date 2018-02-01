//: Playground - noun: a place where people can play

import UIKit

class NetworkClient {
    static let shared = NetworkClient()
    
    private init() {
    }
    
    func fetchUsers() {
        // Performs network call and fetches users
    }
    
    func fetchMessages() {
        // Performs network call and fetches messages
    }
    
    // ...more methods here
}

NetworkClient.shared.fetchMessages()
