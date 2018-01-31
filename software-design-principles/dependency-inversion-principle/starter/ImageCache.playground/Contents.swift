//: Playground - noun: a place where people can play

import Foundation

class Message {
    let id: String
    let text: String
    
    init(id: String, text: String) {
        self.id = id
        self.text = text
    }
}

class MessageCacher {
    let cache: InMemoryCache
    
    init(cache: InMemoryCache) {
        self.cache = cache
    }
    
    func store(message: Message) {
        cache.cache(object: message)
    }
}

class InMemoryCache {
    func cache(object: AnyObject) {
        // caches object
    }
}
