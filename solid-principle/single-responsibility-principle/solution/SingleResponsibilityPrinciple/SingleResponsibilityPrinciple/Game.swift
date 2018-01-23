//
//  Game.swift
//  SingleResponsibilityPrinciple
//
//  Created by Christopher Arriola on 1/22/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import Foundation
import UIKit

class GameViewState {
    func backgroundColor(level: Int) -> UIColor {
        switch level {
        case 1...10: return UIColor.black
        case 11...20: return UIColor.blue
        default: return UIColor.red
        }
    }
}

class ScoreTracker {
    
    private var score: Int
    
    init(score: Int) {
        self.score = score
    }
    
    func incrementScore(difficulty: Int) {
        self.score += 10 * difficulty
    }
}

class Game {
    private var difficulty: Int
    private var level: Int
    private var scoreTracker: ScoreTracker
    private var viewState = GameViewState()
    
    init(score: Int, difficulty: Int, level: Int) {
        self.scoreTracker = ScoreTracker(score: score)  
        self.difficulty = difficulty
        self.level = level
    }
    
    func incrementScore() {
        scoreTracker.incrementScore(difficulty: difficulty)
    }
    
    func backgroundColor() -> UIColor {
        return viewState.backgroundColor(level: level)
    }
    
    func updateLevel(to level: Int) {
        self.level = level
    }
    
    func changeDifficulty(to difficulty: Int) {
        self.difficulty = difficulty
    }
}
