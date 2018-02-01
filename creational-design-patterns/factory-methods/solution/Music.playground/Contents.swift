//: Playground - noun: a place where people can play

import UIKit

protocol Band {
    var name: String { get }
    
    func playMusic()
}

class JazzBand: Band {
    var name: String {
        return "Jazz Vibes"
    }
    
    func playMusic() {
        // Play jazz music
    }
}

class ElectronicBand: Band {
    var name: String {
        return "Above and Beyond"
    }
    
    func playMusic() {
        // Play electronic music
    }
}

class PostRockBand: Band {
    var name: String {
        return "Balmorhea"
    }
    
    func playMusic() {
        // Play post-rock music
    }
}

enum Mood {
    case classy, focus, dance
}

class BandFactory {
    func createBand(forMood mood: Mood) -> Band {
        let band: Band
        switch mood {
        case .classy:
            band = JazzBand()
        case .dance:
            band = ElectronicBand()
        case .focus:
            band = PostRockBand()
        }
        return band
    }
}

class MusicClient {
    func playMusic(for mood: Mood) {
        let band = BandFactory().createBand(forMood: mood)
        band.playMusic()
    }
}
