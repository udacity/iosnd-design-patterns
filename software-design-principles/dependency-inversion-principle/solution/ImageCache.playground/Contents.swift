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

protocol ObjectCache {
    func cache(object: AnyObject)
}

class MessageCacher {
    let cache: ObjectCache
    
    init(cache: ObjectCache) {
        self.cache = cache
    }
    
    func store(message: Message) {
        cache.cache(object: message)
    }
}

class InMemoryCache: ObjectCache {
    func cache(object: AnyObject) {
        // caches object
    }
}
