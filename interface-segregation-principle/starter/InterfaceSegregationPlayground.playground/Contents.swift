//: Playground - noun: a place where people can play

import UIKit

/**
 * Protocol for a Game.
 */
protocol Game {
    func start()
    func pause()
    func stop()
    func save()
    func restore()
    func setDifficulty(to difficulty: Int)
}

class RPGGame: Game {
    // All methods used!
    func start() { }
    func pause() { }
    func stop() { }
    func save() { }
    func restore() { }
    func setDifficulty(to difficulty: Int) { }
}

class TapBasedGame: Game {
    // Only these methods are used
    func start() { }
    func pause() { }
    func stop() { }
    
    // These methods not used
    func save() { }
    func restore() { }
    func setDifficulty(to difficulty: Int) { }
}
