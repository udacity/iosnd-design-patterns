//: Playground - noun: a place where people can play

import UIKit

class MessageSender {
    func send(message: Message) {
        for recipient in message.recipients {
            // Send message to recipient
        }
    }
}

struct Message {
    let id: String
    let text: String
    let recipients: [String]
}

struct LegacyMessage {
    let id: String
    let text: String
    let recipient: String
}
