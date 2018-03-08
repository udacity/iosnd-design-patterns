//
//  Game.swift
//  SingleResponsibilityPrinciple
//
//  Created by Christopher Arriola on 1/22/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import Foundation
import UIKit

class Game {
    private var score: Int
    private var difficulty: Int
    private var level: Int
    
    init(score: Int, difficulty: Int, level: Int) {
        self.score = score
        self.difficulty = difficulty
        self.level = level
    }
    
    func backgroundColor() -> UIColor {
        switch self.level {
        case 1...10: return UIColor.black
        case 11...20: return UIColor.blue
        default: return UIColor.red
        }
    }
    
    func incrementScore() {
        self.score += 10 * difficulty
    }
    
    func updateLevel(to level: Int) {
        self.level = level
    }
    
    func changeDifficulty(to difficulty: Int) {
        self.difficulty = difficulty
    }
}
