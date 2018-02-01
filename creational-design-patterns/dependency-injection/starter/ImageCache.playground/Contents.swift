//: Playground - noun: a place where people can play

import UIKit

protocol Cache {
    func cache(object: NSObject)
}

class InMemoryCache: Cache {
    func cache(object: NSObject) {
        // Cache object in-memory
    }
}

class ImageCache {
    let objectCache: Cache
    
    init() {
        objectCache = InMemoryCache()
    }
}

let imageCache = ImageCache()

