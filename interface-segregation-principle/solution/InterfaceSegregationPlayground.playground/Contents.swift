//: Playground - noun: a place where people can play

import UIKit

/**
 * A game that can be saved.
 */
protocol Saveable {
    func save()
    func restore()
}

/**
 * A game with which the difficulty can be adjusted
 */
protocol VariablyDifficultGame {
    func setDifficulty(to difficulty: Int)
}

/**
 * Protocol for a Game.
 */
protocol Game {
    func start()
    func pause()
    func stop()
}

class RPGGame: Game, Saveable, VariablyDifficultGame {
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
}
