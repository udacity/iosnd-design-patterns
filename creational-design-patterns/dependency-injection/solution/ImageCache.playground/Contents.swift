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

class DiskCache: Cache {
    func cache(object: NSObject) {
        // cache object to disk
    }
}

class ImageCache {
    let objectCache: Cache
    
    init(objectCache: Cache) {
        self.objectCache = objectCache
    }
}

